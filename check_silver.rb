require "open3"
require "rbconfig"

$questions = File.read("silver.md").split(/^-------------.*\n/)
$answers = File.read("silver_answers.md").split(/^-------------.*\n/)

$ruby = File.join(RbConfig::CONFIG["bindir"], RbConfig::CONFIG["ruby_install_name"])

def check(n)
  question = $questions[n - 1]
  answer = $answers[n - 1]
  case question
  when /Which of the following can be inserted into/
    s = question.slice(/^```\n(.*?)^```\n/m, 1)
    code, output = s.split(/\n\[Output\]\n/)
    options = question.scan(/^- \([a-z]\) `(.*)`/).flatten(1)
    xs = answer.slice(/^\*\*A\d+:.*/).scan(/\(([a-z])\)/).flatten(1).map { |i|
      i.ord - ?a.ord
    }
    ys = options.each_with_index.filter_map { |option, i|
      c = code.gsub(/__\(1\)__/, option)
      o, = Open3.capture2e($ruby, stdin_data: c)
      if $VERBOSE
        p [i, o, output]
      end
      o == output ? i : nil
    }
    result = xs == ys ? "OK" : "NG"
    puts "Q#{n}: #{result}"
  when /Given the following:/
    code = question.slice(/^```\n(.*?)^```\n/m, 1)
    options = question.scan(/^- \([a-z]\) (.*)/).flatten(1).map { |i|
      i.slice(/`(.*)`/, 1) || i
    }
    if options.empty?
      options = question.scan(/^\*\([a-z]\).*\n((?:(?!\*\([a-z]\)).*\n)*)/).flatten(1).map { |i|
        i.slice(/^```\n(.*)^```\n/m, 1) || i
      }
    end
    output, = Open3.capture2e($ruby, stdin_data: code)
    if $VERBOSE
      p output
    end
    xs = answer.slice(/^\*\*A\d+:.*/).scan(/\(([a-z])\)/).flatten(1).map { |i|
      i.ord - ?a.ord
    }
    ys = options.each_with_index.filter_map { |option, i|
      case option
      when /no output/i
        output.strip.empty?
      when /a syntax error/i
        output.match?(/syntax error/)
      when /an exception is raised|an error occurs/i
        output.match?(/\(.*Error\)/)
      else
        output.strip == option.strip
      end ? i : nil
    }
    result = xs == ys ? "OK" : "NG"
    puts "Q#{n}: #{result}"
  else
    puts "Q#{n}: ?"
  end
end

if ARGV[0]
  check(ARGV[0].to_i)
else
  (1..50).each do |i|
    check(i)
  end
end
