# Triangle Project Code.
class AboutTriangleProject < Neo::Koan
  def test_equilateral_triangles_have_equal_sides
    assert_equal :equilateral, triangle(2, 2, 2)
    assert_equal :equilateral, triangle(10, 10, 10)
  end

  def test_isosceles_triangles_have_exactly_two_sides_equal
    assert_equal :isosceles, triangle(3, 4, 4)
    assert_equal :isosceles, triangle(4, 3, 4)
    assert_equal :isosceles, triangle(4, 4, 3)
    assert_equal :isosceles, triangle(10, 10, 2)
  end

  def test_scalene_triangles_have_no_equal_sides
    assert_equal :scalene, triangle(3, 4, 5)
    assert_equal :scalene, triangle(10, 11, 12)
    assert_equal :scalene, triangle(5, 4, 2)
  end
end

require './triangle.rb'

class AboutTriangleProject2 < Neo::Koan
  # The first assignment did not talk about how to handle errors.
  # Let's handle that part now.
  def test_illegal_triangles_throw_exceptions
    assert_raise(TriangleError) do triangle(0, 0, 0) end
    assert_raise(TriangleError) do triangle(3, 4, -5) end
    assert_raise(TriangleError) do triangle(1, 1, 3) end
    assert_raise(TriangleError) do triangle(2, 4, 2) end
    # HINT: for tips, see http://stackoverflow.com/questions/3834203/ruby-koan-151-raising-exceptions
  end
end
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
  # WRITE THIS CODE
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
