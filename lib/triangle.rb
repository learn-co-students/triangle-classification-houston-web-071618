class Triangle
  attr_reader :kind
  def initialize (s1, s2, s3)
    raise TriangleError if s1 <= 0 || s2 <= 0 || s3 <= 0
    return @kind = :equilateral if s1 == s2 && s2 == s3
    if (s1 + s2 < s3) || (s2 + s3 < s1) || (s1 + s3 < s2)
      raise TriangleError
    elsif ((s1 == s2 && s1 + s2 > s3) || (s1 == s3 && s1 + s3 > s2) || (s2 == s3 && s2 + s3 > s1))
      @kind = :isosceles
    elsif s1 != s2 && s2 != s3 && s1 != s3
      @kind = :scalene
    else raise TriangleError
    end
  end
  class TriangleError < StandardError
  end
end
