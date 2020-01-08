# remove people with age above 100

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.delete_if {|key, value| value >= 100}

# alternative ages.keep_if {|_, value| value < 100}
