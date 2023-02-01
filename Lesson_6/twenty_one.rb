require 'yaml'
require 'pry'

MSG = YAML.load_file('twenty_one_msg.yml')

STATS = {
  player_wins: 0,
  dealer_wins: 0,
  player_busts: 0,
  dealer_busts: 0,
  player_blackjacks: 0,
  dealer_blackjacks: 0,
  tie: 0
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
  ['Spades', 'Ace']
]

BLACKJACK = 21

DEALER_TARGET = 17

FILE = File.open('twenty_one_rules.txt')

# rules output

def display_rules
  FILE.readlines('twenty_one_rules.txt').each do |line|
    puts line
  end
  puts ""
end

# string output styling

def prompt(string)
  puts "=> #{string}"
end

# methods for card announcement

def initial_card_announce(dealer_hand, player_hand)
  prompt "You have #{player_hand[0][1]} of #{player_hand[0][0]} and the\
 #{player_hand[1][1]} of #{player_hand[1][0]}."
  prompt "The dealer has #{dealer_hand[0][1]} of #{dealer_hand[0][0]} and one\
 facedown card"
  prompt "Your total is #{card_total(player_hand)}!"
end

def card_announcement(player_hand)
  prompt "You were dealt the #{player_hand.last[1]} of #{player_hand.last[0]}."
  prompt "Your total is #{card_total(player_hand)}!"
end

# player turn and dealer turn

def player_turn!(player_hand, dealer_hand, deck)
  choice = ''
  initial_card_announce(dealer_hand, player_hand)

  loop do
    choice = player_choice!(player_hand, deck, choice)
    if busted?(player_hand) || blackjack?(player_hand) || choice == "stay"
      break
    end
  end
end

# makes the player choice to hit or stay, passed into player turn

def player_choice!(player_hand, deck, choice)
  prompt MSG['player_turn']
  choice = gets.downcase.chomp
  case choice
  when 'hit', 'h'
    prompt MSG['hit']
    deal_card(deck, player_hand)
    card_announcement(player_hand) unless busted?(player_hand) ||
                                          blackjack?(player_hand)
  when 'stay', 's'
    return "stay"
  else
    prompt MSG['invalid_choice']
  end
end

# rubocop:disable Metrics/AbcSize
# rubocop:disable Metrics/MethodLength
def dealer_turn!(hand, deck)
  prompt MSG['dealer_turn']
  prompt "The dealer flips over their facedown card and reveals a #{hand[1][1]}\
 of #{hand[1][0]}!"
  loop do
    if card_total(hand) >= DEALER_TARGET && card_total(hand) < BLACKJACK
      prompt "The dealer's total is #{card_total(hand)}."
      sleep 2
      prompt "The dealer stays!"
      break
    elsif card_total(hand) < DEALER_TARGET
      prompt "The dealer's total is #{card_total(hand)}."
      sleep 2
      prompt "The dealer hits!"
      deal_card(deck, hand)
      prompt "They are dealt the #{hand[-1][1]} of #{hand[-1][0]}!"
    elsif busted?(hand) || blackjack?(hand)
      break
    end
  end
  prompt "End of the dealer's turn. Comparing totals, one moment please..."
  sleep 10
  system("clear") || system("cls")
end
# rubocop:enable Metrics/AbcSize
# rubocop:enable Metrics/MethodLength

# methods for checking for blackjack, bust and the game result

def busted?(hand)
  card_total(hand) > BLACKJACK
end

def blackjack?(hand)
  card_total(hand) == BLACKJACK
end

# rubocop:disable Metrics/MethodLength
def find_result(player_hand, dealer_hand)
  player_total = card_total(player_hand)
  dealer_total = card_total(dealer_hand)

  if player_total > BLACKJACK
    :player_bust
  elsif dealer_total > BLACKJACK
    :dealer_bust
  elsif player_total > dealer_total
    :player_win
  elsif dealer_total > player_total
    :dealer_win
  elsif player_total == BLACKJACK
    :player_blackjack
  elsif dealer_total == BLACKJACK
    :dealer_blackjack
  else
    :tie
  end
end
# rubocop:enable Metrics/MethodLength

# rubocop:disable Metrics/CyclomaticComplexity
# rubocop:disable Metrics/MethodLength
def announce_result(player_hand, dealer_hand)
  result = find_result(player_hand, dealer_hand)

  case result
  when :player_win
    prompt MSG['player_win']
  when :dealer_win
    prompt MSG['dealer_win']
  when :player_bust
    prompt MSG['player_bust']
  when :dealer_bust
    prompt MSG['dealer_bust']
  when :player_blackjack
    prompt MSG['player_blackjack']
  when :dealer_blackjack
    prompt MSG['dealer_blackjack']
  when :tie
    prompt MSG['tie']
  end
end
# rubocop:enable Metrics/CyclomaticComplexity
# rubocop:enable Metrics/MethodLength

# methods to handle initializing card deck and dealing cards

def initialize_deck(cards)
  cards.shuffle
end

# for the first initial dealing of 2 cards
# dealt alternating to simulate a real life game of blackjack
# where each card is dealt in an alternating fashion

def initial_deal(player_cards, dealer_cards, deck)
  player_cards << deck.pop
  dealer_cards << deck.pop
  player_cards << deck.pop
  dealer_cards << deck.pop
end

def deal_card(cards, hand)
  hand << cards.pop
end

# calculates the total of the player's hand

def card_total(hand)
  card_values = hand.map { |card| card[1] }
  hand_total = 0

  card_values.each do |value|
    hand_total += if value == 'Ace'
                    11
                  elsif value.to_i == 0
                    10
                  else
                    value
                  end
  end

  if hand_total > BLACKJACK && card_values.include?('Ace')
    card_values.count('Ace').times { hand_total -= 10 }
  end

  hand_total
end

# player and dealer total comparison

def compare_total(player_hand, dealer_hand)
  player_total = card_total(player_hand)
  dealer_total = card_total(dealer_hand)

  prompt "Your total is #{player_total}!"
  prompt "The dealer total is #{dealer_total}!"
end

# method for deciding to play again or quit game

def play_again?
  choice = ''
  loop do
    choice = gets.chomp.downcase
    case choice
    when 'y', 'yes'
      prompt MSG['another_one']
      return true
    when 'n', 'no'
      prompt MSG['goodbye']
      return false
    else
      prompt MSG['yes_no']
      next
    end
  end
end

# this method gets the user's name and validates the input

def enter_player_name
  player = ''

  loop do
    prompt "Before we begin, please enter your name (do not leave blank):"
    player = gets.chomp
    if player.gsub(' ', '').empty? || player.gsub(' ', '').nil?
      prompt MSG['invalid_name']
    else
      break
    end
  end
  player
end

# stats output and end round stats update

# rubocop:disable Metrics/AbcSize
# rubocop:disable Metrics/CyclomaticComplexity
# rubocop:disable Metrics/MethodLength
def update_stats(player_hand, dealer_hand)
  result = find_result(player_hand, dealer_hand)

  case result
  when :player_win
    STATS[:player_wins] += 1
  when :dealer_win
    STATS[:dealer_wins] += 1
  when :player_bust
    STATS[:player_busts] += 1
    STATS[:dealer_wins] += 1
  when :dealer_bust
    STATS[:dealer_busts] += 1
    STATS[:player_wins] += 1
  when :player_blackjack
    STATS[:player_win] += 1
    STATS[:player_blackjack] += 1
  when :dealer_blackjack
    STATS[:dealer_win] += 1
    STATS[:dealer_blackjack] += 1
  when :tie
    STATS[:tie] += 1
  end
end
# rubocop:enable Metrics/CyclomaticComplexity
# rubocop:enable Metrics/MethodLength
# rubocop:enable Metrics/AbcSize

def show_stats(player)
  prompt "The current stats are:\n
  #{player}'s Wins: #{STATS[:player_wins]}\n
  Dealer's Wins: #{STATS[:dealer_wins]}\n
  #{player}'s Blackjacks: #{STATS[:player_blackjacks]}\n
  Dealer's Blackjacks: #{STATS[:dealer_blackjacks]}\n
  #{player}'s Busts: #{STATS[:player_busts]}\n
  Dealer's Busts: #{STATS[:dealer_busts]}\n
  Tie Games: #{STATS[:tie]}\n
  \n"
  sleep 6
  system("clear") || system("cls")
end

def final_stat_line(player)
  prompt "The final stat line is:\n
  #{player}'s Wins: #{STATS[:player_wins]}\n
  Dealer's Wins: #{STATS[:dealer_wins]}\n
  #{player}'s Blackjacks: #{STATS[:player_blackjacks]}\n
  Dealer's Blackjacks: #{STATS[:dealer_blackjacks]}\n
  #{player}'s Busts: #{STATS[:player_busts]}\n
  Dealer's Busts: #{STATS[:dealer_busts]}\n
  Tie Games: #{STATS[:tie]}\n
  \n"
  sleep 8
  system("clear") || system("cls")
end

# game intro with rules and player identification and name validation

system("clear") || system("cls")
display_rules

player = enter_player_name

# main game loop

in_game = true

while in_game
  system("clear") || system("cls")
  player_hand = []
  dealer_hand = []
  deck = initialize_deck(CARD_DECK)

  show_stats(player)
  initial_deal(player_hand, dealer_hand, deck)
  player_turn!(player_hand, dealer_hand, deck)
  dealer_turn!(dealer_hand, deck) unless busted?(player_hand) ||
                                         blackjack?(player_hand)
  compare_total(player_hand, dealer_hand)
  find_result(player_hand, dealer_hand)
  announce_result(player_hand, dealer_hand)
  update_stats(player_hand, dealer_hand)
  prompt MSG['play_again?']
  in_game = play_again?
end

final_stat_line(player)
