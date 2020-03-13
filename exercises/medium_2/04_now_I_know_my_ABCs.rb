# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M

# Rules
# - There are 2 letters per spelling block
# - each block can be used only once.
# - determine if its possible to spell a word

# Input
# - String
# Output
# - Boolean

# Data Structure
# - 2d array for spelling blocks

# Algorithm
# - Iterate through char array of input string
#   - Iterate through spelling_blocks array
#     - if sub_array contains current_char
#       - delete sub_array
#       - break out of loop
#     - once it iterates over last sub_array
#      - if no match is found
#        - return false
# - If it manages to completely iterate through char_array
#   - return true

def block_word?(str)
  spelling_blocks = [
                    ['B', 'O'], ['X', 'K'], ['C', 'P'], ['N', 'A'], ['G', 'T'],
                    ['R', 'E'], ['F', 'S'], ['J', 'W'], ['H', 'U'], ['V', 'I'],
                    ['L', 'Y'], ['Z', 'M']
                    ]

  str.chars.each do |char|
    spelling_blocks.each_with_index do |block, block_idx|
      if block.include?(char.upcase)
        spelling_blocks.delete_at(block_idx)
        break
      elsif block_idx == spelling_blocks.size - 1
        return false
      end
    end
  end
  true
end


# LS solution
BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(string)
  up_string = string.upcase
  BLOCKS.none? { |block| up_string.count(block) >= 2 }
end

block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true
