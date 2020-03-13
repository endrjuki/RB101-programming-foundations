def display_board(brd)
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end

#board = {1 => ' ', 2 => ' ', 3 => ' ',
#         4 => ' ', 5 => ' ', 6 => ' ',
#         7 => ' ', 8 => ' ', 9 => ' '
#        }

def initialize_board
  new_board = {}
  (1..9).each { |n| new_board[n] = '' }
  new_board
end

board = initialize_board
display_board(board)
