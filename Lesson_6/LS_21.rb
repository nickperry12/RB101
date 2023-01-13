require 'yaml'

MSG = YAML.load_file('twenty_one_msg.yml')
STATS = {
  player_wins: 0,
  computer_wins: 0,
  player_busts: 0,
  computer_busts: 0,
  player_blackjacks: 0,
  computer_blackjacks: 0
}

CARD_DECK = [
  ['Diamonds', 2],
  ['Diamonds', 3],
  ['Diamonds', 4],
  ['Diamonds', 5],
  ['Diamonds', 6],
  ['Diamonds', 7],
  ['Diamonds', 8],
  ['Diamonds', 9],
  ['Diamonds', 10],
  ['Diamonds', 'Jack'],
  ['Diamonds', 'Queen'],
  ['Diamonds', 'King'],
  ['Diamonds', 'Ace'],
  ['Hearts', 2],
  ['Hearts', 3],
  ['Hearts', 4],
  ['Hearts', 5],
  ['Hearts', 6],
  ['Hearts', 7],
  ['Hearts', 8],
  ['Hearts', 9],
  ['Hearts', 10],
  ['Hearts', 'Jack'],
  ['Hearts', 'Queen'],
  ['Hearts', 'King'],
  ['Hearts', 'Ace'],
  ['Clovers', 2],
  ['Clovers', 3],
  ['Clovers', 4],
  ['Clovers', 5],
  ['Clovers', 6],
  ['Clovers', 7],
  ['Clovers', 8],
  ['Clovers', 9],
  ['Clovers', 10],
  ['Clovers', 'Jack'],
  ['Clovers', 'Queen'],
  ['Clovers', 'King'],
  ['Clovers', 'Ace'],
  ['Spades', 2],
  ['Spades', 3],
  ['Spades', 4],
  ['Spades', 5],
  ['Spades', 6],
  ['Spades', 7],
  ['Spades', 8],
  ['Spades', 9],
  ['Spades', 10],
  ['Spades', 'Jack'],
  ['Spades', 'Queen'],
  ['Spades', 'King'],
  ['Spades', 'Ace'],
]

BLACKJACK = 21

DEALER_HIT_TARGET = 17

def prompt(string)
  puts "=> #{string}"
end

def player_turn!(player_hand)
  choice = ''

  loop do
    prompt MSG['player_turn']
    choice = gets.downcase.chomp
    if choice == 'hit' || choice == 'h'
      prompt MSG['hit']
      deal_card(card)
      break if busted?(player_hand)
    elsif choice == 'stay' || choice == 's'
      break
    else
      prompt MSG['invalid_choice']
    end
  end

  if busted?(card)
    prompt MSG['player_bust']
  end
end

def initialize_deck(cards)
  cards.shuffle
end

def deal_player_cards(cards, hand)
  2.times { hand << cards.pop }
  hand
end

def card_total(hand)
  card_values = hand.map { |card| card[1] }
  hand_total = 0

  card_values.each do |value|
    if value == 'Ace'
      hand_total += 11
    elsif value.to_i == 0
      hand_total += 10
    else
      hand_total += value
    end
  end

  if hand_total > 21 && card_values.include?('Ace')
    card_values.count('Ace').times { hand_total -= 10 }
  end

  hand_total
end

cards = initialize_deck(CARD_DECK)
player_hand = []

player_hand = deal_player_cards(cards, player_hand)
p player_hand