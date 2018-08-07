class Triangle
  attr_reader :a, :b, :c

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    triangleChecker
    if @a == @b and @a == @c
      :equilateral
    elsif @a == @b || @a == @c || @b == @c
      :isosceles
    else
      :scalene
    end
  end

  def triangleChecker
    if (@a <= 0 || @b <= 0 || @c <= 0) and (@a + @b < @c || @a + @c < @b || @b + @c < @a)
      raise TriangleError
    end
  end

  class TriangleError < StandardError
  end
end
