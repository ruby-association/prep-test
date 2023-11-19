require "open3"
require "rbconfig"

$questions = File.read("gold.md").split(/^-------------.*\n/)
$answers = File.read("gold_answers.md").split(/^-------------.*\n/)

$ruby = File.join(RbConfig::CONFIG["bindir"], RbConfig::CONFIG["ruby_install_name"])

def check(n)
  question = $questions[n - 1]
  answer = $answers[n - 1]
  case question
  when /Assume that the following code must have the stated execution result|Which code produces the following execution result\?/
    s = question.slice(/^```\n(.*?)^```\n/m, 1)
    code, output = s.split(/\n?\[Execution Result\]\n+/)
    options = question.scan(/^\*[A-Z]:\* `(.*)`/).flatten(1)
    if options.empty?
      options = question.scan(/^\*[A-Z]:\*.*\n((?:(?!\*[A-Z]:\*).*\n)*)/).flatten(1).map { |i|
        i.slice(/^```\n(.*)^```\n/m, 1) || i
      }
    end
    xs = answer.slice(/^\*\*A\d+:.*/).scan(/\(([A-Z])\)/).flatten(1).map { |i|
      i.ord - ?A.ord
    }
    if question.match?(/Which of the following options CANNOT be inserted into/)
      xs = (0 .. options.size - 1).to_a - xs
    end
    ys = options.each_with_index.filter_map { |option, i|
      c = code.strip.empty? ? option : c = code.gsub(/__\(1\)__/, option)
      o, = Open3.capture2e($ruby, stdin_data: c)
      if $VERBOSE
        p [i, o, output]
      end
      o == output ? i : nil
    }
    result = xs == ys ? "OK" : "NG"
    puts "Q#{n}: #{result}"
  when /Which option corresponds to the execution result\?/
    code = question.slice(/^```\n(.*?)^```\n/m, 1)
    options = question.scan(/^(?:- )?\*[A-Z]:\* (.+)/).flatten(1).map { |i|
      i.slice(/`(.*)`/, 1) || i
    }
    if options.empty?
      options = question.scan(/^\*[A-Z]:\*.*\n((?:(?!\*[A-Z]:\*).*\n)*)/).flatten(1).map { |i|
        i.slice(/^```\n(.*)^```\n/m, 1) || i
      }
    end
    output, = Open3.capture2e($ruby, stdin_data: code)
    if $VERBOSE
      p [output, options]
    end
    xs = answer.slice(/^\*\*A\d+:.*/).scan(/\(([A-Z])\)/).flatten(1).map { |i|
      i.ord - ?A.ord
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
