# Bonus feature 2: Keep score

# Keep score of how many times the player and computer each win.
# Don't use global or instance variables.
# Make it so that the first player to 5 wins the game.

# Things I will need:
# - method to initialize score board
# - method to increment score
# - method to display score

def initialize_score
  {player: 0, computer: 0}
end

def return_score(score_board)
  "Player: #{score_board[:player]}, Computer: #{score_board[:computer]}"
end

# increment score feature will take into account who won
def increment_score(score_board, who_won)
  case who_won
  when 'player' then score_board[:player += 1]
  when 'computer' then score_board[:computer += 1]
end
