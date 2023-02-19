require "tty-markdown"
require "timeout"

class Test
  attr_reader :questions, :answers, :howto
  class Exit < StandardError; end

  class EndOfTime < StandardError; end
  DURATION = 60 * 90

  def initialize(type: :silver)
    case type
    when :silver
      @questions = File.read("silver.md").split(/^-------------.*\n/)
      @answers = File.read("silver_answers.md").split(/^-------------.*\n/)
      @answers.map! do |ans|
        ans.slice(/^\*\*A\d+:.*/).scan(/\(([a-z])\)/).flatten(1).map { |i|
          i.ord - "a".ord
        }
      end
      @test_symbol = "a"
    when :gold
      @questions = File.read("gold.md").split(/^-------------.*\n/)
      @answers = File.read("gold_answers.md").split(/^-------------.*\n/)[0..49]
      @answers.map! do |ans|
        ans.slice(/^\*\*A\d+:.*/).scan(/\(([A-Z])\)/).flatten(1).map { |i|
          i.ord - ?A.ord
        }
      end
      @test_symbol = "A"
    else
      raise StandardError, "test not found"
    end
    @howto = File.read("test_readme.md")
    @last_printed_lines_count = 0
  end

  def start
    @result = []
    clean_the_screen
    print_howto
    clean_the_screen
    Timeout.timeout(DURATION, EndOfTime) do
      questions[0..49].each_with_index do |question, inx|
        puts question
        @result[inx] = validate_answer(get_user_answer, inx)
        clean_the_screen
      end
      clean_the_screen
      calc_and_print_result(@result)
    end
  rescue Exit
    clean_the_screen
    calc_and_print_result(@result)
  rescue EndOfTime
    clean_the_screen
    puts "# Time for exam has runned out"
    calc_and_print_result(@result)
  end

  private

  def calc_and_print_result(result)
    correct_answers_count = result.count { |e| 1 if e }
    correct_answers_percecnt = correct_answers_count.to_f / questions.length * 100
    puts "Your result is **#{correct_answers_count} out of #{questions.length}**"
    puts "Percent of **correct answers is #{correct_answers_percecnt.round(2)}%**"
    if correct_answers_count >= 75.0
      puts "## You've passed the test exam"
    else
      puts "## You've failed the test exam."
      puts "### Don't give up! You can do it! (="
    end
  end

  def validate_answer(user_answers, inx)
    user_answers.sort == answers[inx].sort
  end

  def print_howto
    puts howto.to_s
    raise Exit unless gets.chomp.match?(/\Ay\z/)
  end

  def get_user_answer
    puts "**Write you answers separated by commas:**"
    user_answer = gets
    raise Exit if user_answer.match? /exit/i

    user_answer.strip.split(",").map { |e| e.ord - @test_symbol.ord }
  end

  def clean_the_screen
    print "\033[2J\033[3J\033[1;1H"
  end

  def puts(string)
    Kernel.puts TTY::Markdown.parse(string).to_s
  end
end

test_type = ARGV[0]&.to_sym || :silver
ARGV.clear
if test_type.match?("help")
  puts TTY::Markdown.parse(File.read("test_help.md")).to_s
else
  test = Test.new(type: test_type)
  test.start
end
