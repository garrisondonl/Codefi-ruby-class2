class Calculator

    @x = 10.to_i
    @y = 50.to_i
    @z

    def add_method
        puts @x.to_i + @y.to_i
    end

    def subtract_method
        @x - @y
    end

    def multiply_method
        @x * @y
    end

    def divide_method
        @x / @y
        @x.div @y
    end

    w = Calculator.new
    w.add_method
end