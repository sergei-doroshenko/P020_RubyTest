# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  validate(a, b, c)
  if a == b and b == c
    :equilateral
  elsif (a == b and a != c) or (a == c and a != b) or (b == c and b != a)
    :isosceles
  else
    :scalene
  end
end

def validate(a, b, c)
  validateSidesGreaterThanZero(a, b, c)
  
  validateSidesSum(a + b, c, "a and b", "c")
  validateSidesSum(a + c, b, "a and c", "b")
  validateSidesSum(b + c, a, "b and c", "a")
end

def validateSidesGreaterThanZero(a, b, c)
  result = [[a, "a"], [b, "b"], [c, "c"]].map { |side| side[0] < 0  or side[0] == 0 ? side[1] : nil }
  result = result.filter { |item| item }
  
  if result.any?
    raise TriangleError, "Triangle side(s) #{result} is(are) less or equal zero"
  end
end

def validateSidesSum(sum, side, two_sides, one_side)
  if sum < side or sum == side
    fail TriangleError.new("Triangle sides are invalid. #{two_sides} are less or equal #{one_side}")
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
