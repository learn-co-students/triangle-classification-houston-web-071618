require "pry"
class Triangle
  # write code here

  def initialize (a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if @a<=0 || @b<=0 || @c<=0 || @a+@b <= @c || @b+@c <= @a || @a+@c <= @b
      begin
        raise TriangleError
      # rescue TriangleError => error
      #     puts error.message
      end
    elsif @a == @b && @b == @c
      return :equilateral
    elsif @a == @b || @b ==@c || @a == @c
      return :isosceles
    else
      return :scalene
    end
  end
end

class TriangleError < StandardError
   def message
     "Not a valid triangle!"
   end
 end
