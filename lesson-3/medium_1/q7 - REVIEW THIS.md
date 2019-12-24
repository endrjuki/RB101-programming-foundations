### Question 7 -

#### Is the hash going to get modified by the method?

```ruby
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash = demo_hash.map do |family_member, values|
  family_member.clone
  values.clone
  end

  demo_hash = Hash[demo_hash]

  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

```

=begin h.each do |key, value|
  puts key
  value.each |k,v|
    puts k
    puts v
  end
=end end


On `line 16` and `line 17` index assignment is used, which is a mutating method.
`#[]` modifies the original object, therefore, yes, it is going to modify that array.
Under the hood, ruby passes object id of each item in the hash and assigns it to a variable local to the scope of the block.
