require 'pry'

class Triangle
  attr_accessor :kind
  # write code here

  def initialize(s1, s2, s3)
    sorted = [s1, s2, s3].sort
    if valid_triangle_sides?(sorted)
      @kind = type_of_triangle(sorted)
    else
      begin
        raise TriangleError
      rescue => error
        puts error.message
      end
    end
  end

  def valid_triangle_sides?(sorted_sides)
    first, second, third = sorted_sides[0], sorted_sides[1], sorted_sides[2]
    raise TriangleError if sorted_sides.any? { |el| el <= 0 } || first + second <= third
    return true
  end

  def type_of_triangle(sorted_sides)
    first, second, third = sorted_sides[0], sorted_sides[1], sorted_sides[2]
    return :equilateral if first == second && second == third
    return :isosceles if first == second || second == third || first == third
    return :scalene
  end

    class TriangleError < StandardError

      def message
        "sorry, that is not a valid triangle"
      end

    end

end
