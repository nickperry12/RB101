require 'yaml'
MSG = YAML.load_file('rps_messages.yml')

# method definitions
def prompt(string)
  puts "=> #{string}"
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper')
end

def display_results(player, computer, username)
  if win?(player, computer)
    prompt("#{username} wins!")
  elsif win?(computer, player)
    prompt("The computer wins!")
  else
    prompt("It's a stalemate! No one wins.")
  end
end

# arrays for player/CPU choices

GAME_CHOICES = %w[rock paper scissors]

# start of program

prompt(MSG['welcome'])
username = ''
loop do
  username = gets.chomp
  if username.nil? || username.empty? || username.include?(' ')
    prompt("Please enter a valid username! (You cannot leave the field blank)")
  else
    break
  end
end

prompt("Welcome #{username}! These are the rules:")
prompt(MSG['rules'])
sleep 15
system("clear") || system("cls")

# main loop

in_game = true
while in_game
  prompt(MSG['user_input'])
  player_choice = ''
  cpu_choice = GAME_CHOICES.sample

  loop do
    player_choice = gets.chomp.downcase
    if GAME_CHOICES.include?(player_choice)
      break
    else
      prompt(MSG['invalid_input'])
    end
  end

  prompt("#{username} chooses #{player_choice}!")
  prompt("CPU chooses #{cpu_choice}!")

  # game outcomes

  display_results(player_choice, cpu_choice, username)

  prompt(MSG['play_again'])

  loop do
    play_again = gets.chomp.downcase
    case play_again
    when "y", "yes"
      system("clear") || system("cls")
      prompt("Great! Let's play.")
    when "n", "no"
      in_game = false
      prompt(MSG['goodbye'])
    else
      prompt(MSG['invalid'])
      next
    end
    break
  end
end