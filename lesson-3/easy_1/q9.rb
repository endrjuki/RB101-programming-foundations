flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

# turn this into an array containing only "Barney" and his number

reject = %w(Fred Wilma Betty BamBam Pebbles)

flintstones.reject! {|key| reject.include?(key)}
flintstones.flatten!

# This is actually not very clever, see the LS way below

flintstones.assoc("Barney")
#=> ["Barney", 2]
