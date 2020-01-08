# Add up all of the ages from the Munster family hash:


ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

age_total = 0

ages.each do |_, age|
  age_total += age
end

