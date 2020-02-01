class Calculator
  # attr_accessor :@x,:@y
  def initialize(x,y)
  	@x = x
  	@y = y
  end

  def additon(x,y)
    if x.is_a?(Integer) && y.is_a?(Integer) && !x.nil? && !y.nil? 
      return x + y
    else 
      return "invalid no of argument or argument type or not an integer"
    end
  end
  
  def division(x,y)
    if y != 0 || !x.is_a?(Integer) 
      return x / y 
    else
      return "You can't divide by zero!"

  	end
  end
  
  def subtraction(x,y)
    if x.is_a?(Integer) && y.is_a?(Integer) && !x.nil? && !y.nil? 
      return x - y
    else
      return "invalid no of argument or argument type or not an integer"
    end
  end

  def multiplication(x,y)
    if x.is_a?(Integer) && y.is_a?(Integer) && !x.nil? && !y.nil? 
      return x * y
    else
      return "invalid no of argument or argument type or not an integer"
    end
  end
end
