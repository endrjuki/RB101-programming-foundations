# Write a method that takes the 3 angles of a triangle as arguments,
# and returns a symbol :right, :acute, :obtuse, or :invalid
#depending on whether the triangle is a right, acute, obtuse, or invalid triangle.

# You may assume integer valued angles so you don't have to worry about floating point errors.
# You may also assume that the arguments are specified in degrees.

# Input
# - 3 Integers

# Output
#  - :acute
#  - :right
#  - :obtuse
#  - :invalid

# Rules
# - Sum off all angles must be 180 for triangle to be valid.
# - Right angle triangle
#   - one of the angles 90 degrees
# - Acute
#   - all 3 angles ar less than 90 degrees
# - Obtuse
#   - one angle is greater than 90 degrees

def triangle(a1, a2, a3)
  angle_arr = [a1, a2, a3]
  if angle_arr.sum == 180 && angle_arr.min > 0
    return :right if angle_arr.max == 90
    return :acute if angle_arr.max < 90
    return :obtuse if angle_arr.max > 90
  else
    return :invalid
end

# LS way
def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]

  case
  when angles.reduce(:+) != 180, angles.include?(0)
    :invalid
  when angles.include?(90)
    :right
  when angles.max > 90
    :obtuse
  else
    :acute
  end
end

triangle(60, 70, 50) == :acute
triangle(30, 90, 60) == :right
triangle(120, 50, 10) == :obtuse
triangle(0, 90, 90) == :invalid
triangle(50, 50, 50) == :invalid
