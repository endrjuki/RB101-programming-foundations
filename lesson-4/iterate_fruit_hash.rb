def select_fruit(hsh)
  results = {}
  counter = 0
  keys = hsh.keys # => ['apple', 'carrot', 'pear', 'brocolli']

  loop do

    break if counter == hsh.size # this has to be on top incase hsh is empty hash

    current_produce = keys[counter]
    current_type = hsh[current_produce]

    if current_type == 'Fruit'
      results.store(current_produce, current_type)
    end

    counter += 1
  end
  results
end


produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}
