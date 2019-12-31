#What is the return value of the following code? Why?

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# [1, nil, nil]
# map uses block's return value which is the last statement evaluated in the block
# if current element is larger than 1, if branch executes and
# if statement returns `nil` if current element is larger than 1.

# if current element is 1 or smaller than 1, else branch executes and
# else statement returns the current element if its 1 or smaller than 1
