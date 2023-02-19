require "tty-markdown"
require "timeout"
require 'byebug'

class Test
  attr_reader :questions, :answers, :howto

  DURATION = 60 * 90

  class Exit < StandardError; end

  class EndOfTime < StandardError; end

  def initialize(type: :silver, language: :en)
    case type
    when :silver
      @questions = File.read("silver#{language == :en ? "" : "_ja" }.md").split(/^-------------.*\n/)
      @answers = File.read("silver_answers#{language == :en ? "" : "_ja" }.md").split(/^-------------.*\n/)
      @answers.map! do |ans|
        ans.slice(/^\*\*A\d+:.*/).scan(/\(([a-z])\)/).flatten(1).map { |i|
          i.ord - "a".ord
        }
      end
      @test_symbol = "a"
    when :gold
      @questions = File.read("gold#{language == :en ? "" : "_ja" }.md").split(/^-------------.*\n/)
      @answers = File.read("gold_answers#{language == :en ? "" : "_ja" }.md").split(/^-------------.*\n/)[0..49]
      @answers.map! do |ans|
        ans.slice(/^\*\*A\d+:.*/).scan(/\(([A-Z])\)/).flatten(1).map { |i|
          i.ord - "A".ord
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
    clean_the_screen
    print_howto
    clean_the_screen
    Timeout.timeout(DURATION, EndOfTime) do
      @exam_started = true
      exam
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

  def exam
    @curr_inx = -1
    @result = Array.new(50)
    @user_answers = Array.new(50)
    loop do
      next_question
      user_input = get_user_input
      case user_input
      when :repeat
        @curr_inx -= 1
        next
      when :next
        next
      when :prev
        @curr_inx -= 2
        next
      when :howto
        @curr_inx -= 1
        clean_the_screen
        print_howto
        clean_the_screen
      else
        @user_answers[@curr_inx] = user_input
        @result[@curr_inx] = validate_answer(user_input)
      end
    end
  end

  def next_question
    @curr_inx += 1 if @curr_inx < 49
    clean_the_screen
    question = questions[@curr_inx]
    puts question
    if @user_answers[@curr_inx]
      prev_answ = @user_answers[@curr_inx].map { |i| (@test_symbol.ord + i).chr }.join(",")
      puts "## Your previously entered answer is **(#{prev_answ})**"
    end
  end

  def validate_answer(user_answers)
    user_answers.sort == answers[@curr_inx].sort
  end

  def get_user_input
    puts "**Write you answers separated by commas:**"
    user_answer = gets.chomp
    input = case user_answer
    in /exit/i
      puts "**Are you sure want finish exam? (Enter `yes` to exit)**"
      raise Exit if gets.match?(/yes/i)

      :repeat
    in /\A(n|next|continue)\z/i
      :next
    in /\A(p|previous|prev\z)/i
      :prev
    in /\Agoto (\d+)\z/
      return :repeat unless $1.to_i.between?(1,50)
      
      @curr_inx = $1.to_i - 1
      :repeat
    in /\A(stop|finish|end\z)/i
      puts "**Are you sure want finish exam? (Enter `yes` to exit)**"
      raise Exit if gets.match?(/yes/i)

      :repeat
    in /\A(help|h)\z/i
      puts <<~MD
        # Available commands
        - `howto` - print the text that was printend at start (don't restart the exam)
        - `n` or `next` or `continue` - to go to the next question in order
        - `p` or `prev` or `previous` - to go to the previous question in order
        - `stop` or `finish` or `end` - to finish the exam and print your results
        - `h` or `help` - to print this text

        **Press enter to continue**
      MD
      gets

      :repeat
    in /\Ahowto\z/i
      :howto
    else 
      user_answer.strip.split(",").map { |e| e.ord - @test_symbol.ord }
    end
    input
  end

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

  def print_howto
    puts howto.to_s
    unless @exam_started
      puts "## To start the test enter `y`"
      raise Exit unless gets.chomp.match?(/\Ay\z/)
    else
      puts "**Press enter to continue**"
      gets
    end
  end

  def clean_the_screen
    print "\033[2J\033[3J\033[1;1H"
  end

  def puts(string)
    Kernel.puts TTY::Markdown.parse(string).to_s
  end
end

test_type = ARGV[0]&.to_sym || :silver
test_language = ARGV[1]&.to_sym == "ja" && :ja || :en

ARGV.clear
if test_type.match?("help")
  puts TTY::Markdown.parse(File.read("test_help.md")).to_s
else
  test = Test.new(type: test_type, language: test_language)
  test.start
end
