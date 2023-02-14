
# Also Have setup so will loop through infinitely until the user selects exit
class Calculator
    attr_accessor :prompt, :answer
  
    def initialize(prompt, answer)
      @prompt = prompt
      @answer = answer
    end
  
    # Check to see if the chomp is a whole integer
    def self.is_i?(answer)
      /\A[-+]?\d+\z/ === answer
    end
  
    # Get the 2 values we are expecting answers for from the users number inputs and then check to make sure it's an integer
    def self.get_values
      [gets, gets].map do |s|
        s = s.chomp
        s.chomp.to_f unless !Calculator.is_i?(s.chomp)
      end
    end
  end
  
  p1 = "\n\n ========== What would you like to do? ========= \n\n1. Add \n2. Subtract \n3. Multiply \n4. Divide \n5. Exit \n\n ==================================\n\n"
  
  @questions = [
    Calculator.new(p1, '')
  ]
  
  def run_calc(questions)
    answer = ''
    # Prompts for each thing we will allow the user to do
    prompt_2 = [
      Calculator.new("\n\n ========== What 2 whole numbers would you like to add? =========\n\n", ''),
    ]
    prompt_3 = [
      Calculator.new("\n\n ========== What 2 whole numbers would you like to subtract? =========\n\n", ''),
    ]
    prompt_4 = [
      Calculator.new("\n\n ========== What 2 whole numbers would you like to multiply? =========\n\n", ''),
    ]
    prompt_5 = [
      Calculator.new("\n\n ========== What 2 whole numbers would you like to divide? =========\n\n", ''),
    ]
  
    # we allow the user to answer our initial question and then pass the prompt above to the method we want, if an unacceptable
    # answer is given we re-run our script with a notification to select something appropriate
    questions.each do |question|
      puts question.prompt
      answer = gets.chomp
      case answer
      when '1'
        add_method(prompt_2)
      when '2'
        subtract_method(prompt_3)
      when '3'
        multiply_method(prompt_4)
      when '4'
        divide_method(prompt_4)
      when '5'
        puts "Calculator exiting"
        exit
      else
        puts 'Please select something appropriate'
        run_calc(@questions)
      end
    end
  end
  
  # All of our methods below we are only allowing whole integer numbers, but we are displaying a float for our answers
  # To allow to show the answer of division equations without rounding to the nearest whole number
  def add_method(questions)
    questions.each do |question|
      puts question.prompt
      begin
      operator = :+
      puts "The answer is #{Calculator.get_values.inject(operator)}"
      run_calc(@questions)
      rescue
        puts "It looks like you entered a non number, try that again"
        run_calc(@questions)
        end
    end
  end
  
  def subtract_method(questions)
    questions.each do |question|
      puts question.prompt
      begin
        operator = :-
        puts "The answer is #{Calculator.get_values.inject(operator)}"
        run_calc(@questions)
      rescue
        puts "It looks like you entered a non number, try that again"
        run_calc(@questions)
      end
    end
  end
  
  def multiply_method(questions)
    questions.each do |question|
      puts question.prompt
      begin
        operator = :*
        puts "The answer is #{Calculator.get_values.inject(operator)}"
        run_calc(@questions)
      rescue
        puts "It looks like you entered a non number, try that again"
        run_calc(@questions)
      end
    end
  end
  
  def divide_method(questions)
    questions.each do |question|
      puts question.prompt
      begin
        operator = :/
        puts "The answer is #{Calculator.get_values.inject(operator)}"
        run_calc(@questions)
      rescue
        puts "It looks like you entered a non number, try that again"
        run_calc(@questions)
      end
    end
  end
  run_calc(@questions)
  