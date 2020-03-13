require 'io/console'

FIRST_MOVE = 'choose'
VALID_FIRST_MOVES = %w(choose player computer).freeze
VALID_ANSWERS = %w(y yes n no)
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
MAX_SCORE = 5
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]]              # diagonals

def prompt(msg)
  puts "=> #{msg}"
end

def display_board(brd)
  system 'clear'
  puts "You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}"
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

# board = {1 => ' ', 2 => ' ', 3 => ' ',
#         4 => ' ', 5 => ' ', 6 => ' ',
#         7 => ' ', 8 => ' ', 9 => ' '
#        }

def initialize_board
  new_board = {}
  (1..9).each { |n| new_board[n] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}): "
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def offensive_move(brd, square)
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, COMPUTER_MARKER)
    break if square
  end
  square
end

def defensive_move(brd, square)
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, PLAYER_MARKER)
    break if square
  end
  square
end

def choose_5(brd, square)
  brd[5] = COMPUTER_MARKER if brd[5] == INITIAL_MARKER
end

def computer_places_piece!(brd)
  square = nil

  square = offensive_move(brd, square)       if square.nil?
  square = defensive_move(brd, square)       if square.nil?
  square = choose_5(brd, square)             if square.nil?
  square = empty_squares(brd).sample if square.nil?

  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd) # !! forcibly returns a boolean
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    return 'Player' if brd.values_at(*line).count(PLAYER_MARKER) == 3 # the effect of splat operator here is the same as in the elsif branch: passing elements in one by one.
    return 'Computer' if brd.values_at(*line).count(COMPUTER_MARKER) == 3
  end
  nil
end

def joinor(arr, delimiter=', ', word='or') # bonus feature: available moves formatting
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delimiter)
  end
end

def initialize_score
  {player: 0, computer: 0}
end

def display_score(score_board)
  puts "First to #{MAX_SCORE} is the Grand Winner."
  puts "Player: #{score_board[:player]}, Computer: #{score_board[:computer]}"
  puts ""
end

def increment_score(score_board, who_won)
  case who_won
  when 'Player' then score_board[:player] += 1
  when 'Computer' then score_board[:computer] += 1
  end
end

def display_grand_winner(score)
  system 'clear'
  if score[:player] == MAX_SCORE
    puts 'Player is the Grand Winner!'
  else
    puts 'Computer is the Grand Winner!'
  end
end

def find_at_risk_square(line, brd, marker)
  if brd.values_at(*line).count(marker) == 2
    brd.select {|k, v| line.include?(k) && v == INITIAL_MARKER}.keys.first
  else
    nil
  end
end

def place_piece!(brd, player)
  case player
  when 'Player' then player_places_piece!(brd)
  when 'Computer' then computer_places_piece!(brd)
  end
end

def alternate_player(current_player)
  case current_player
  when 'Player' then 'Computer'
  when 'Computer' then 'Player'
  end
end

def continue_game
  print 'Press any key to continue'
  STDIN.getch
  puts ""
end

def determine_first_player
  case FIRST_MOVE.downcase
  when 'choose' then player_chooses_first_move
  when 'player' then 'Player'
  when 'computer' then 'Computer'
  else
    raise Exception.new "Constant FIRST_MOVE set to an invalid value! Acceptable values: #{VALID_FIRST_MOVES.join}."
  end
end

def player_chooses_first_move
  prompt 'Would you like to start first? (y or n)'
  answer = ''

  loop do
    answer = gets.chomp.downcase
    break if VALID_ANSWERS.include?(answer)
  end

  (answer == 'y' || answer == 'yes') ? 'Player' : 'Computer'
end

system 'clear'

loop do
  prompt "First one to #{MAX_SCORE} wins is the Grand Winner."
  score = initialize_score
  first_player = determine_first_player

  loop do
    board = initialize_board
    current_player = first_player


    loop do
      display_board(board)
      display_score(score)
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end

    if someone_won?(board)
      winner = detect_winner(board)
      increment_score(score, winner)
      display_board(board)
      display_score(score)
      prompt "#{winner} won!"
      continue_game

    else
      display_board(board)
      display_score(score)
      prompt "It's a tie!"
      continue_game
    end

    break if score[:player] == MAX_SCORE || score[:computer] == MAX_SCORE
  end

  display_grand_winner(score)

  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe."
