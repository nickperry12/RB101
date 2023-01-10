require 'yaml'
require 'pry'

MSG = YAML.load_file('tictactoemsg.yml')
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9],
  [1, 4, 7],
  [2, 5, 8],
  [3, 6, 9],
  [1, 5, 9],
  [3, 5, 7]
]
STATS = { player_wins: 0, cpu_wins: 0, tie: 0 }

# methods for program

def prompt(str)
  puts "=> #{str}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system("clear") || system("cls")
  current_score
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
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = Hash.new
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def place_piece!(brd, current_player)
  if current_player == "Computer"
    computer_move!(brd, current_player)
  else
    player_move!(brd)
  end
end

def player_move!(brd)
  square = ""
  loop do
    prompt "Please place your marker in one of the following squares:"
    prompt joinor(empty_squares(brd), ', ', 'or ').to_s
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt MSG['invalid_choice']
  end

  brd[square] = PLAYER_MARKER
end

# rubocop:disable Metrics/AbcSize
# rubocop:disable Metrics/CyclomaticComplexity
def computer_move!(brd, first)
  threat_line = computer_detect_threat(brd)
  win_line = computer_detect_win(brd)

  square = nil

  if first == "Computer" && !square
    square = 5  unless brd[5] == 'O' || brd[5] == PLAYER_MARKER
  end

  if !square
    square = brd.select { |k, v| win_line.include?(k) && v == ' ' }.keys[0]
  end

  if threat_line.empty? == false && !square
    square = brd.select { |k, v| threat_line.include?(k) && v == ' ' }.keys[0]
  end

  if !square
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end
# rubocop:enable Metrics/AbcSize
# rubocop:enable Metrics/CyclomaticComplexity

def computer_detect_threat(brd)
  WINNING_LINES.select do |line|
    brd.values_at(*line).count(PLAYER_MARKER) == 2 &&
      brd.values_at(*line).count(' ') == 1
  end.flatten
end

def computer_detect_win(brd)
  WINNING_LINES.select do |line|
    brd.values_at(*line).count(COMPUTER_MARKER) == 2 &&
      brd.values_at(*line).count(' ') == 1
  end.flatten
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def winner?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 3
      return "Player"
    elsif brd.values_at(line[0], line[1], line[2]).count(COMPUTER_MARKER) == 3
      return "Computer"
    end
  end
  nil
end

def joinor(array, delimiter = ', ', word = 'or ')
  array.map!(&:to_s)

  if array.size > 1
    index = 0
    loop do
      array[index] += delimiter
      index += 1
      break if index == array.size - 1
    end
    array.insert(-2, word).join
  else
    array[0]
  end
end

def output_score(player_name)
  prompt "The score is #{player_name}: #{STATS[:player_wins]}, "\
  "Computer: #{STATS[:cpu_wins]}, "\
  "Ties: #{STATS[:tie]}."
end

def current_score
  prompt "*** Current Score***".center(25)
  prompt "Player: #{STATS[:player_wins]}, CPU: #{STATS[:cpu_wins]}, Tie: #{STATS[:tie]}"
end

def who_goes_first(user)
  players = [user, "Computer"]
  first = players.sample
  first
end

def alternate_player(current_player, player_name)
  if current_player == "Computer"
    player_name
  elsif current_player == player_name
    "Computer"
  end
end


def countdown
  prompt "Prepare yourself! Beginning the game in..."
  prompt "5..."
  sleep 1
  prompt "4..."
  sleep 1
  prompt "3..."
  sleep 1
  prompt "2..."
  sleep 1
  prompt "1..."
  sleep 1
  prompt "GO!!!"
  sleep 1
end

# username input and validation
player_name = ""
prompt MSG['welcome']
loop do
  player_name = gets.chomp
  if player_name.gsub(' ', '').nil? || player_name.gsub(' ', '').empty?
    prompt MSG['invalid_name']
  else
    break
  end
end

prompt "Welcome #{player_name}!"
prompt MSG['rules']
sleep 12

in_game = true

# game loop begins

while in_game
  board = initialize_board

  # loop for player and computer moves
  current_player = who_goes_first(player_name)
  prompt "#{current_player} will go first!"
  countdown

  loop do
    display_board(board)
    place_piece!(board, current_player)
    current_player = alternate_player(current_player, player_name)
    #binding.pry
    break if winner?(board) || board_full?(board)
  end

  display_board board

  # message or tie declaration

  if winner? board
    prompt "#{player_name} " + MSG['player'] if detect_winner(board) == "Player"
    prompt MSG['cpu_wins'] if detect_winner(board) == "Computer"
  else
    prompt MSG['tie']
  end

  # stats update and game continuation

  case detect_winner(board)
  when "Player"
    STATS[:player_wins] += 1
  when "Computer"
    STATS[:cpu_wins] += 1
  else
    STATS[:tie] += 1
  end

  if STATS[:player_wins] < 3 && STATS[:cpu_wins] < 3
    output_score(player_name)
    sleep 3
    next
  elsif STATS[:player_wins] == 3
    prompt "#{player_name} is the Grand Champion! Hooray!"
  elsif STATS[:cpu_wins] == 3
    prompt "The Computer is the Grand Champion! Better luck next time."
  end

  # user decides to play again
  choice = ""

  loop do
    prompt MSG['play_again?']
    choice = gets.chomp.downcase

    case choice
    when 'y', 'yes'
      STATS.each { |k, _| STATS[k] = 0 }
      prompt MSG['another_one']
      sleep 4
    when 'n', 'no'
      prompt MSG['goodbye']
      in_game = false
    else
      prompt MSG['yes_no']
      next
    end
    break
  end
end
