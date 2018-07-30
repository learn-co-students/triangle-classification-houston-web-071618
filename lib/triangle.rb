class Triangle
#   attr_reader :a, :b, :c
# def initialize(a, b, c)
#   @a = a
#   @b = b
#   @c = c
# end
#
# def kind
#   validate_triangle
#   if a == b && b == c
#     :equilateral
#   elsif a == b || b == c || a == c
#     :isosceles
#   else
#     :scalene
#   end
# end
#
# def validate_triangle
#   real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
#   [a, b, c].each { |s| real_triangle << false if s <= 0 }
#   raise TriangleError if real_triangle.include?(false)
# end
#
# class TriangleError < StandardError
# end
#


  attr_accessor :side1, :side2, :side3, :allsides

  def initialize(side1, side2, side3)
    @allsides = []
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind

    if @side1 == @side2 && @side2 == @side3
      return :equilateral
    elsif @side1 == @side2 && @side1 + @side2 > @side3 || @side1 == @side3 && @side1 + @side3 > @side2 || @side2 == @side3 && @side2 + @side3 > side1
      return :isosceles
    elsif @side1 != @side2 && @side2 != @side3 && @side1 + @side2 > @side3
      return :scalene
    else
      raise TriangleError if
        @side1 <=0 || @side2 <= 0 || @side3 <= 0
      end
        end
      end
    end
  end

  class TriangleError < StandardError
    def maessage
      "not a triangle"
    end

  end

end
