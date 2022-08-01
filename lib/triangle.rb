class Triangle
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if @side1 <= 0 or @side2 <= 0 or @side3 <= 0
      raise TriangleError
    elsif @side1 + @side2 <= @side3 or @side2 + @side3 <= @side1 or @side1 + @side3 <= @side2
      raise TriangleError
    elsif @side1 == @side2 and @side2 == @side3
      :equilateral
    elsif @side1 == @side2 or @side2==@side3 or @side1 == @side3
      :isosceles
    elsif @side1 != @side2 and @side2 != @side3 and @side1 !=@side3
      :scalene
    end
  end
  
  class TriangleError < StandardError
  end
end