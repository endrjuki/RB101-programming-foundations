# Method for initializing deck:                         done
# how to shuffle cards?:                                done, just use shuffle method
# data structure for player hand:                       done, array of arrays, contains rank, suit
# Method for determining current value of the hand      in progress
# Method for adjusting ace value if hand value is over
# Method for drawing a card out of deck                 done
# Method for determining if card is ace                 done
require 'io/console'
RANKS = {
  'Ace'   => 11,
  '2'     => 2,
  '3'     => 3,
  '4'     => 4,
  '5'     => 5,
  '6'     => 6,
  '7'     => 7,
  '8'     => 8,
  '9'     => 9,
  '10'    => 10,
  'King'  => 10,
  'Jack'  => 10,
  'Queen' => 10
}

CARD_SUITS = {spades: '♣', diamonds: '♦', hearts: '♥', clubs: '♣'}
START_CARD_AMOUNT = 2
MAX_HAND_VALUE = 21

def prompt(message)
  puts "=> #{message}"
end

def initialize_deck
  deck = []
  RANKS.each do |rank, value|
    CARD_SUITS.each do |suit, _symbol|
      deck.push([rank, suit, value])
    end
  end
  deck
end

def initialize_hand!(deck)
  hand = []
  START_CARD_AMOUNT.times { draw_card!(deck, hand) }
  hand
end

def current_hand_value(hand)
  total = 0
  hand.each do |card|
    total += RANKS[card[0]]
  end

  total
end

def draw_card!(deck, hand)
  hand.push(deck.pop)
end

def card_value_11?(card)
  card[2] == 11
end

def adjust_ace_value!(card)
  card[2] = 1
end

def determine_hand_value(hand)
  value = 0

  hand.each do |card|
    value += card[2]
  end

  while value > MAX_HAND_VALUE && hand.any? {|card| card_value_11?(card)}
    hand.each do |card|
      if card_value_11?(card)
        adjust_ace_value!(card)
        break
      end
    end
    value = determine_hand_value(hand)
  end
  value
end

def bust?(hand)
  determine_hand_value(hand) > 21
end

def continue_game
  print 'Press any key to continue'
  STDIN.getch
  puts ""
end

def display_player_cards(cards)
  l_first = ''
  l_fill = ''
  l_top = ''
  l_middle = ''
  l_bottom = ''
  l_last = ''

  cards.each do |card|
    l_first += '┌─────────┐'
    l_fill += '│         │'
    l_top += "│#{card[0][0]}#{CARD_SUITS[card[1]]}       │"
    l_middle += "│    #{CARD_SUITS[card[1]]}    │"
    l_bottom += "│        #{card[0][0]}│"
    l_last += '└─────────┘'
  end
  puts l_first
  puts l_top
  puts l_fill
  puts l_fill
  puts l_middle
  puts l_fill
  puts l_bottom
  puts l_last
end

def display_table(dealer, player)
  system 'clear'
  prompt 'Dealer cards'
  prompt "current value: #{determine_hand_value(dealer)}"
  display_player_cards(dealer)
  puts ''
  prompt 'Player cards'
  prompt "current value: #{determine_hand_value(player)}"
  display_player_cards(player)
end

def determine_winner(player, dealer)
  player_score = determine_hand_value(player)
  dealer_score = determine_hand_value(dealer)
  case (player_score <=> dealer_score)
  when 1 then 'player'
  when -1 then 'dealer'
  when 0 then 'draw'
end


end

def display_winner(player, dealer)
  case determine_winner(player, dealer)
  when 'player' then prompt 'You won!'
  when 'dealer' then prompt 'You lost! Dealer is the winner!'
  when 'draw' then prompt "It's a draw."
  end
end

loop do

  deck = initialize_deck.shuffle
  dealer = initialize_hand!(deck)
  player = initialize_hand!(deck)


  answer = ''
  loop do
    display_table(dealer, player)
    puts 'hit or stay?'
    answer = gets.chomp
    break if answer == 'stay'
    draw_card!(deck, player)
    display_table(dealer, player)
    break if bust?(player)
  end

  if bust?(player)
    prompt 'You busted! dealer wins'
  else
    prompt 'You have chosen to stay. Dealers turn now!'


    loop do
      if determine_hand_value(dealer) >= 17
        prompt 'Dealer has chosen to stay'
        break
      end
      display_table(dealer, player)
      draw_card!(deck, dealer) if determine_hand_value(dealer) < 17
      continue_game
      display_table(dealer, player)
      break if bust?(dealer)
    end

    if bust?(dealer)
      prompt 'Dealer busted! Player wins!'
    else
      prompt "Player score #{determine_hand_value(player)}"
      prompt "Computer score #{determine_hand_value(dealer)}"
      display_winner(player, dealer)
    end
  end

  prompt 'would you like to play another game?'
  answer = gets.chomp
  break if answer.start_with?('n')
end
