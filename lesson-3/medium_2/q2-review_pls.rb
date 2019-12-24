def fun_with_ids
  a_outer = 42
  b_outer = "forty two"
  c_outer = [42]
  d_outer = c_outer[0]

  a_outer_id = a_outer.object_id # => 85
  b_outer_id = b_outer.object_id # => 47329460432800
  c_outer_id = c_outer.object_id # => 47329460488660
  d_outer_id = d_outer.object_id # => 85

  puts "a_outer is #{a_outer} (42) with an id of: #{a_outer_id} (85) before the block."
  puts "b_outer is #{b_outer} (forty_two) with an id of: #{b_outer_id} (47329460432800) before the block."
  puts "c_outer is #{c_outer} ([42]) with an id of: #{c_outer_id} (47329460488660) before the block."
  puts "d_outer is #{d_outer} (42) with an id of: #{d_outer_id} (85) before the block."
  puts

  an_illustrative_method(a_outer, b_outer, c_outer, d_outer, a_outer_id, b_outer_id, c_outer_id, d_outer_id)
  # This method is unable to reassign variables in this scope. 

  # Should be same as above, since Ruby is "pass by reference value"
  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} BEFORE and: #{a_outer.object_id} AFTER the method call."
  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} BEFORE and: #{b_outer.object_id} AFTER the method call."
  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} BEFORE and: #{c_outer.object_id} AFTER the method call."
  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} BEFORE and: #{d_outer.object_id} AFTER the method call."
  puts
  # should execute rescue, since these variables are undefined in this scope
  puts "a_inner is #{a_inner} with an id of: #{a_inner_id} INSIDE and: #{a_inner.object_id} AFTER the method." rescue puts "ugh ohhhhh"
  puts "b_inner is #{b_inner} with an id of: #{b_inner_id} INSIDE and: #{b_inner.object_id} AFTER the method." rescue puts "ugh ohhhhh"
  puts "c_inner is #{c_inner} with an id of: #{c_inner_id} INSIDE and: #{c_inner.object_id} AFTER the method." rescue puts "ugh ohhhhh"
  puts "d_inner is #{d_inner} with an id of: #{d_inner_id} INSIDE and: #{d_inner.object_id} AFTER the method." rescue puts "ugh ohhhhh"
  puts
end


def an_illustrative_method(a_outer, b_outer, c_outer, d_outer, a_outer_id, b_outer_id, c_outer_id, d_outer_id)
  a_outer_inner_id = a_outer.object_id # => 85
  b_outer_inner_id = b_outer.object_id # => 47329460432800
  c_outer_inner_id = c_outer.object_id # => 47329460488660
  d_outer_inner_id = d_outer.object_id # => 85

  
  puts "a_outer id was #{a_outer_id} (85) before the method and is: #{a_outer.object_id} (85) inside the method."
  puts "b_outer id was #{b_outer_id} (47329460432800) before the method and is: #{b_outer.object_id} (47329460432800) inside the method."
  puts "c_outer id was #{c_outer_id} (47329460488660) before the method and is: #{c_outer.object_id} (47329460488660) inside the method."
  puts "d_outer id was #{d_outer_id} (85) before the method and is: #{d_outer.object_id} (85) inside the method."
  puts

  a_outer = 22
  b_outer = "thirty three"
  c_outer = [44]
  d_outer = c_outer[0]

  puts "a_outer inside after reassignment is #{a_outer} (22) 2 with an id of: #{a_outer_id} (85) before and: #{a_outer.object_id} (45) after."
  puts "b_outer inside after reassignment is #{b_outer} (thirty three) with an id of: #{b_outer_id} (47329460432800) before and: #{b_outer.object_id} (47450510447000
  ) after."
  puts "c_outer inside after reassignment is #{c_outer} ([44]) with an id of: #{c_outer_id} (7329460488660) before and: #{c_outer.object_id} (47450510400220
  ) after."
  puts "d_outer inside after reassignment is #{d_outer} (44) with an id of: #{d_outer_id} (85) before and: #{d_outer.object_id} (89) after."
  puts

  a_inner = a_outer    # => 22
  b_inner = b_outer    # => "thirty three"
  c_inner = c_outer    # => [44]
  d_inner = c_inner[0] # => 44

  a_inner_id = a_inner.object_id
  b_inner_id = b_inner.object_id
  c_inner_id = c_inner.object_id
  d_inner_id = d_inner.object_id

  puts "a_inner is #{a_inner} (22) with an id of: #{a_inner_id} (45)  inside the method (compared to #{a_outer.object_id} (45) for outer)."
  puts "b_inner is #{b_inner} (thirty three) with an id of: #{b_inner_id} (47450510447000) inside the method (compared to #{b_outer.object_id} (47450510447000) for outer)."
  puts "c_inner is #{c_inner} ([44]) with an id of: #{c_inner_id} (47450510400220) inside the method (compared to #{c_outer.object_id} (47450510400220) for outer)."
  puts "d_inner is #{d_inner} (44) with an id of: #{d_inner_id} (85) inside the method (compared to #{d_outer.object_id} (85) for outer)."
  puts
end

