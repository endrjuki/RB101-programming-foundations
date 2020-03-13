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

def display_dealer_cards(card)
  card = [card]
  l_first = ''
  l_fill = ''
  l_top = ''
  l_middle = ''
  l_bottom = ''
  l_last = ''

  card.each do |card|
    l_first += '┌─────────┐'
    l_fill += '│         │'
    l_top += "│#{card[0][0]}#{CARD_SUITS[card[1]]}       │"
    l_middle += "│    #{CARD_SUITS[card[1]]}    │"
    l_bottom += "│       #{CARD_SUITS[card[1]]}#{card[0][0]}│"
    l_last += '└─────────┘'
  end

l_first += '┌─────────┐'
l_fill += '│░░░░░░░░░│'
l_top += '│░░░░░░░░░│'
l_middle += '│░░░░░░░░░│'
l_bottom += '│░░░░░░░░░│'
l_last += '└─────────┘'

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
  display_player_cards(dealer)
  prompt 'Player cards'
  display_player_cards(player)
  prompt "current value: #{determine_hand_value(player)}"
end
