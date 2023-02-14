class Calculator
    at_exit {
        if ($!.success?)
            `ruby exercise-2.10.rb`
    
            
        else
            print 'wrong input rerun'
        end
    }
    def self.get_values
        [gets, gets].map { |s| s.chomp.to_i }
    end

   
    puts "Do you want to 1. add, 2. subtract, or 3. multiply"
    
    response = gets.chomp
   
    case response.downcase
        
    when 'add'
        puts "Which numbers would you like to add"
        operator = :+
        puts "The anwser is #{Calculator.get_values.inject(operator)}"
    when 'subtract'
        puts "Which numbers would you like to subtract"
        operator = :-
        puts "The anwser is #{Calculator.get_values.inject(operator)}"
    when 'multiply'
        puts "Which numbers would you like to multiply"
        operator = :*
        puts "The anwser is #{Calculator.get_values.inject(operator)}"
    when '1'
        puts "Which numbers would you like to add"
        operator = :+
        puts "The anwser is #{Calculator.get_values.inject(operator)}"
    when '2'
        puts "Which numbers would you like to subtract"
        operator = :-
        puts "The anwser is #{Calculator.get_values.inject(operator)}"
    when '3'
        puts "Which numbers would you like to multiply"
        operator = :*
        puts "The anwser is #{Calculator.get_values.inject(operator)}"
    else
        
        puts "Invalid response please try again"
        Process.exit!(true)
        exit
    end




    # @x = 10
    # @y = 50
    # @z = 0

    # def self.add_method
    #    calculation = @x.to_i + @y.to_i
    # end

    # def self.subtract_method
    #     @x - @y
    # end

    # def self.multiply_method
    #     @x * @y
    # end

    # def self.divide_method
    #     @x / @y
    #     @x.div @y
    # end

    # def self.all_methods
    #     puts "Add Method #{self.add_method}\n"
    #     puts "Add Method #{self.subtract_method}\n"
    #     puts "Add Method #{self.multiply_method}\n"
    #     puts "Add Method #{self.divide_method}\n"
    # end

    
end
