class Triangle
  # write code here
  attr_accessor :a, :b, :c

  def initialize(s1, s2, s3)
  	@a = s1
  	@b = s2
  	@c = s3
  end

  def kind
  	if !valid_triangle?
  		raise TriangleError
  	else
  		if a == b && b == c
      		:equilateral
   	 elsif a == b || b == c || a == c
     	 :isosceles
  	  else
      :scalene
    end
  	end

  end

  def valid_triangle?
  	@a > 0 && @b > 0 && @c > 0 && (@a+@b>@c && @a+@c>@b && @b+@c>@a)
  end

  class TriangleError < StandardError
  end

end
