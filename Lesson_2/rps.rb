require 'yaml'
MSG = YAML.load_file('rps_messages.yml')

# method definitions
def prompt(string)
  puts "=> #{string}"
end

def valid_input?(input)
  input == 'rock' || input == 'scissors' ||
    input == 'paper' || input == 'p' || input == 'r' ||
    input == 's'
end

# array for CPU choices

cpu_options = ['rock', 'paper', 'scissors']

# start of program

prompt(MSG['welcome'])
username = ''
loop do
  username = gets.chomp
  if username.nil? || username.empty? || username.include?(' ')
    prompt("Please enter a valid username! (Make sure there are no spaces)")
  else
    break
  end
end

prompt("Welcome #{username}! These are the rules:")
prompt(MSG['rules'])
sleep 20
system("clear") || system("cls")

# main loop

in_game = true
while in_game
  prompt(MSG['user_input'])
  player_choice = ''
  cpu_choice = cpu_options.sample

  loop do
    player_choice = gets.chomp.downcase
    if valid_input?(player_choice) == false
      prompt(MSG['invalid_input'])
    else
      break
    end
  end

  prompt("#{username} chooses #{player_choice}!")
  prompt("CPU chooses #{cpu_choice}!")

  # game outcomes

  if ((player_choice == 'rock' || player_choice == 'r') &&
     cpu_choice == 'scissors') ||
     ((player_choice == 'paper' || player_choice == 'p') &&
     cpu_choice == 'rock') ||
     ((player_choice == 'scissors' || player_choice == 's') &&
     cpu_choice == 'paper')
    prompt("#{username} wins!")
  elsif ((player_choice == 'rock' || player_choice == 'r') &&
        cpu_choice == 'paper') ||
        ((player_choice == 'paper' || player_choice == 'p') &&
        cpu_choice == 'scissors') ||
        ((player_choice == 'scissors' || player_choice == 's') &&
        cpu_choice == 'rock')
    prompt("The computer wins!")
  else
    prompt("It's a stalemate! No one wins.")
  end

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