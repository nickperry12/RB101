require 'yaml'
MSG = YAML.load_file('tictactoemsg.yml')

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WIN_CONDITIONS = {}

def prompt(str)
  puts "=> #{str}"
end

def display_board(brd)
  system 'clear'
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

def initialize_board
  new_board = Hash.new
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_move!(brd)
  square = ""
  loop do
    prompt "Please choose a square (#{empty_squares(brd).join(', ')}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt MSG['invalid_choice']
  end

    brd[square] = PLAYER_MARKER
end

def computer_move(brd)
  square = empty_squares(brd).sample
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def winner?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  winning_lines = [[1, 2, 3],
                   [4, 5, 6],
                   [7, 8 ,9],
                   [1, 4, 7],
                   [2, 5, 8],
                   [3, 6, 9],
                   [1, 5, 9],
                   [3, 5, 7]
                  ]
  winning_lines.each do |line|
    if brd[line[0]] == PLAYER_MARKER && 
       brd[line[1]] == PLAYER_MARKER && 
       brd[line[2]] == PLAYER_MARKER
       return 'Player'
    elsif brd[line[0]] == COMPUTER_MARKER && 
          brd[line[1]] == COMPUTER_MARKER && 
          brd[line[2]] == COMPUTER_MARKER
      return 'Computer'
    end
  end
  nil
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
  sleep 17

in_game = true

#game loop begins

while in_game
  board = initialize_board

  # loop for player and computer moves
  loop do
    display_board(board)
    player_move!(board)
    break if winner?(board) || board_full?(board)
    computer_move(board)
    break if winner?(board) || board_full?(board)
  end 

  display_board board

  # message or tie declaration
  if winner? board
    prompt "#{detect_winner(board)} won!"
  else
    prompt MSG['tie']
  end

  #prompt for user to play again or quit game
  play_again = ""
  loop do
    prompt MSG['play_again?']
    play_again = gets.chomp.downcase

    case play_again
    when 'y', 'yes'
      prompt MSG['another_one']
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