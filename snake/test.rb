require "byebug"

class Calculator
    def sum(a,b)
        a + b
    end
    def substractor(a,b)
        a - b
    end
end


calc = Calculator.new

tests_sum = {
    [1,2] => 3,
    [5,6] => 11,
    [100,1] => 101
}

tests_sum.each do | input, expected_result|
    #byebug
   if !(calc.sum(input[0],input[1]) == expected_result)
        raise "Error occurred, input #{input}. Expected result #{expected_result}.\n"
   end
end