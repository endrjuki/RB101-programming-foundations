system('clear') || system('cls')

GAME_LOGIC = {
  rock: ['lizard', 'scissors'],
  paper: ['rock', 'spock'],
  scissors:  ['lizard', 'paper'],
  lizard: ['paper', 'spock'],
  spock: ['scissors', 'rock']
}

SHORTHAND = { r: 'rock', p: 'paper', s: 'scissors', l: 'lizard', sp: "spock" }
VALID_CHOICE = SHORTHAND.flatten.map(&:to_s)
MAX_SCORE = 5

def prompt(message)
  Kernel.puts(message)
end

def valid_answer?(string)
  %w(y yes n no).include?(string)
end

def retrieve_choice
  input = ''

  loop do
    prompt("\n=> Please choose between #{GAME_LOGIC.keys.join(', ')}")
    prompt("=> you can also use shorthand: #{SHORTHAND.keys.join(', ')}")
    input = gets.chomp().downcase()
    break if VALID_CHOICE.include?(input)
    prompt("=> Invalid input")
  end

  input
end

def retrieve_answer
  input = ''

  loop do
    prompt("=> Would you like to try again? (yes or no)")
    input = Kernel.gets().chomp()
    break if valid_answer?(input)
    prompt("=> Invalid input!")
  end

  input
end

def short_to_longhand(string)
  if SHORTHAND.values.include?(string)
    string
  else
    SHORTHAND[string.to_sym]
  end
end

def win?(first, second)
  GAME_LOGIC[first.to_sym()].include?(second)
end

def who_won(player_one, player_two)
  if win?(player_one, player_two)
    "player_won"
  elsif player_one == player_two
    "tie"
  else
    "computer_won"
  end
end

def display_result(variable)
  case variable
  when "player_won"
    prompt("=> You've won!")
  when "computer_won"
    prompt("=> You lost!")
  when "tie"
    prompt "=> It's a tie!"
  end
end

def update_score!(variable, score)
  case variable
  when "player_won"
    score[:player] += 1
  when "computer_won"
    score[:computer] += 1
  end
end

def another_game?(answer)
  answer == 'y' || answer == 'yes'
end

def game_over?(score)
  score[:player] == MAX_SCORE || score[:computer] == MAX_SCORE
end

def display_grand_winner(score)
  if score[:player] == 5
    prompt("=> You've won 5 times, you are the Grand Winner!")
  else
    prompt("=> You lost, computer is the grand winner!")
  end
end

def reset_score(score)
  score[:player] = 0
  score[:computer] = 0
end

def display_score(score)
  prompt("=> Player #{score[:player]} : #{score[:computer]} Computer")
end

score = {
  player: 0,
  computer: 0
}

loop do
  prompt("First one to win 5 times is the Grand Winner!")
  loop do
    display_score(score)

    player_choice = retrieve_choice
    player_choice = short_to_longhand(player_choice)

    computer_choice = SHORTHAND.values.sample
    system('clear') || system('cls')

    prompt("You chose: #{player_choice}; Computer chose: #{computer_choice}")
    winner = who_won(player_choice, computer_choice)

    display_result(winner)
    update_score!(winner, score)

    break if game_over?(score)
  end
  display_grand_winner(score)
  display_score(score)

  answer = retrieve_answer

  break unless another_game?(answer)
  system('clear') || system('cls')
  reset_score(score)
end

prompt("=> Thanks for playing!")
