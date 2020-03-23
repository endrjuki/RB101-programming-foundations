# you have swithces numbered from 1 to n
# each of the switch represents a light and is currently off
# 1) on first pass you toggle all of them (all on)
# 2) on second pass you toggle all the swithces that are multiples of two
# 3) on third pass you toggle all the switches which are multiples of three
# 4) and so on... you repeat the process till u have been through n repetitions

# Write a method that takes one argument, the total number of switches,
# and returns an Array that identifies which lights are on after n repetitions.

# Example with n = 5 lights:

# round 1: every light is turned on
# round 2: lights 2 and 4 are now off; 1, 3, 5 are on
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
# round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
# The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

# With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

# Algorithm
# ended up scrapping the algorithm

def initialize_lights(n)
  lights = Array.new(n) {|_| true}
  2.upto(n) do |divisor|
    lights.map!.with_index do |light, index|
      light_number = index + 1
      if light_number % divisor == 0
        !light
      else
        light
      end
    end
  end
  result = []
  lights.each_with_index {|light, idx| result << (idx + 1) if light}
  result
end

#ls way

# initialize the lights hash
def initialize_lights(number_of_lights)
  lights = Hash.new
  1.upto(number_of_lights) {|number| lights[number] = "off"}
end

# return the list of lights that are on
def on_lights(lights)
  lights.select { |_position, state | state == "on" }.keys
end
# toggle every nth light
def toggle_every_nth_light(lights, nth)
  lights.each do |position, state|
    if position % nth = 0
      lights[position] = (state == "off") ? "on" : "off"
    end
  end
end
# run entire program for number of lights
def toggle_lights(number_of_lights)
  lights = initialize_lights(number_digits)
  1.upto(lights.size) do |iteration_number|
    toggle_every_nth_light(lights, iteration_number)
  end

  on_lights(lights)
end


# borrowing the ideas learned from ls example
def initialize_lights(number_of_lights)
  lights = Hash.new
  1.upto(number_of_lights) { |number| lights[number] = false }
  lights
end

def on_lights(lights)
  lights.select { |_position, state| state == true }.keys
end

def toggle_every_nth_light(lights, nth)
  lights.each do |position, state|
    lights[position] = !state if position % nth == 0
  end
end

def toggle_lights(number_of_lights)
  lights = initialize_lights(number_of_lights)
  1.upto(number_of_lights) do |iteration_number|
    toggle_every_nth_light(lights, iteration_number)
  end

  on_lights(lights)
end

# revisiting this exercise
def initialize_lights(n)
  lights = Hash.new
  1.upto(n) {|number| lights[number] = true}
  lights
end

def on_lights(light_hash)
  light_hash.select { |idx, light| light == true}.keys
end

def toggle_lights(n)
  lights = initialize_lights(n)

  2.upto(n) do |pass|
    lights.each { |idx, state| lights[idx] = !state if idx % pass == 0 }
  end

  on_lights(lights)
end
