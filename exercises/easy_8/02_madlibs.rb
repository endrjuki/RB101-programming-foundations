def prompt(string)
  puts "Enter #{string}"
end

def retrieve_input
  gets.chomp
end

prompt('a noun')
noun = retrieve_input
prompt('a verb')
verb = retrieve_input
prompt('an adjective')
adjective = retrieve_input
prompt('an adverb')
adverb = retrieve_input

puts "Do you walk your #{adjective} #{noun} #{adverb}? That's hilarious!"
