# Write a method that determines the mean (average) of the three scores passed to it, and returns the letter value associated with that grade.

# Numerical Score Letter	Grade
# 90 <= score <= 100	'A'
# 80 <= score < 90	'B'
# 70 <= score < 80	'C'
# 60 <= score < 70	'D'
# 0 <= score < 60	'F'
# ested values are all between 0 and 100. There is no need to check for negative values or values greater than 100.
def determine_grade(score)
  case
  when score < 60
    'F'
  when score >= 60 && score < 70
    'D'
  when score >= 70 && score < 80
    'C'
  when score >= 80 && score < 90
    'B'
  else
    'A'
  end
end

def get_grade(first, second, third)
  score_average = (first + second + third) / 3
  determine_grade(score_average)
end

# ls way

def get_grade(s1, s2, s3)
  result = (s1 + s2 + s3) / 3

  case result
  when 90..100 then 'A'
  when 80..89  then 'B'
  when 70..79  then 'C'
  when 60..69  then 'D'
  else              'F'
  end
end
# its essentially like when (90..100).include?(result)
# the case statement returns true if the range included the object referenced by
# result

# Further exploration
# How would you handle this if there was a possibility
# of extra credit grades causing it to exceed 100 points?
#
# First method would handle this scenario.
