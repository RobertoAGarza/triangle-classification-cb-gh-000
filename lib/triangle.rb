class Triangle
  attr_accessor :equilateral, :isosceles, :scalene 
  
  if !valid?
    begin 
      raise TriangleError
    rescue TriangleError => error 
      puts error.message 
    end 
  end
  
  class TriangleError < StandardError
    def message 
      "you must give the get_married method an argument of an instance of the person class!"
    end
  end

  def valid?
    if @equilateral + @isosceles > @scalene and  @equilateral + @scalene > @isosceles and @isosceles + @scalene > @equilateral and @isosceles > 0 and @equilateral > 0 and @scalene > 0 
      true 
    else
      false 
    end 
  end 
    
    
end
