def general_select(hsh, produce_type)
  result = {}
  keys = hsh.keys
  count = 0

  loop do
    break if count == hsh.size

    current_key = keys[count]
    current_value = hsh[current_key]

    if produce_type == current_value #selection criteria
      result.store(current_key, current_value)
    end

    count += 1
  end
  result
end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

general_select(produce, 'Fruit')     # => {"apple"=>"Fruit", "pear"=>"Fruit"}
general_select(produce, 'Vegetable') # => {"carrot"=>"Vegetable", "broccoli"=>"Vegetable"}
general_select(produce, 'Meat')      # => {}
