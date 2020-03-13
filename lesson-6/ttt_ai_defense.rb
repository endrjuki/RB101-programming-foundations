# The computer currently picks a square at random.
# That's not very interesting.
# Let's make the computer defensive minded,
# so that if there's an immediate threat, then it will defend the 3rd square.
# We'll consider an "immediate threat" to be 2 squares marked by the opponent in a row.
# If there's no immediate threat, then it will just pick a random square.

# I will need:
# - method that detects if there is an "immediate threat"
# - method that takes a "countermeasure"

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]]


def find_at_risk_square(line, board)
  if board.values_at(*line).count('X') == 2
    board.select{|k,v| line.include?(k) && v == ' '}.keys.first
  else
    nil
  end
end
