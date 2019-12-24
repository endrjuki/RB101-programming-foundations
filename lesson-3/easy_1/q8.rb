flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

=begin
we will end up with nested array
["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]

how to un-nest this array?
=end

flintstones.flatten!
