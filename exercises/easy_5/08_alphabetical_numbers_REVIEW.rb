# Write a method that takes an Array of Integers between 0 and 19,
# and returns an Array of those Integers sorted
# based on the English words for each number:

# zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

# generating the hash dictionary of 1..19 numbers
array = "zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen".gsub!(',', '').split
number_dictionary = {}
array.each_with_index {|word, number| number_dictionary[number] = word}



ENGLISH_NUMBER_WORDS = {0=>"zero", 1=>"one", 2=>"two", 3=>"three", 4=>"four",
                        5=>"five", 6=>"six", 7=>"seven", 8=>"eight", 9=>"nine",
                        10=>"ten", 11=>"eleven", 12=>"twelve", 13=>"thirteen",
                        14=>"fourteen", 15=>"fifteen", 16=>"sixteen", 17=>"seventeen",
                        18=>"eighteen", 19=>"nineteen"}

def alphabetic_number_sort(array)
  hash = Hash.new(0)
  array.each do |num|
    hash[ENGLISH_NUMBER_WORDS[num]] = num
  end
  hash.sort.to_h.values
end

alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

# ls way

NUMBER_WORDS = %w(zero one two three four
                  five six seven eight nine
                  ten eleven twelve thirteen fourteen
                  fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(numbers)
  numbers.sort_by { |number| NUMBER_WORDS[number] }
end
