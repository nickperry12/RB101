require 'yaml'
MSG = YAML.load_file('rps_messages.yml')
require 'pry'

results = ['Hooray! You won!', 'Oh no! The CPU wins', "It's a tie!"]

WIN = {
  rock: %w[scissors lizard],
  paper: %w[rock spock],
  scissors: %w[paper lizard],
  lizard: %w[spock paper],
  spock: %w[rock scissors]
}

stats = {
  player_wins: 0,
  cpu_wins: 0,
  tie: 0
}

GAME_CHOICES = %w[rock paper scissors lizard spock]

def prompt(message)
  puts "=> #{message}"
end

def win?(player_one, player_two, index)
  WIN[player_one.to_sym][index] == player_two
end

# start of game

prompt(MSG['welcome'])
username = ''
loop do
  username = gets.chomp
  if username.gsub(' ', '').nil? || username.gsub(' ', '').empty?
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
    loop do
      player_choice = gets.chomp.downcase
      if GAME_CHOICES.include?(player_choice)
        break
      elsif case
            when player_choice == 'r' then (player_choice = 'rock')
            when player_choice == 's' then (player_choice = 'scissors')
            when player_choice == 'p' then (player_choice = 'paper')
            when player_choice == 'l' then (player_choice = 'lizard')
            when player_choice == 'sp' then (player_choice = 'spock')
            end
        break
      else
        prompt(MSG['invalid_input'])
      end
    end

    # game results

    if win?(player_choice, cpu_choice, 0)
      stats[:player_wins] += 1
      prompt("#{username} chooses #{player_choice.capitalize}!")
      prompt("CPU chooses #{cpu_choice.capitalize}!")
      prompt(results[0].to_s)
    elsif win?(player_choice, cpu_choice, 1)
      stats[:player_wins] += 1
      prompt("#{username} chooses #{player_choice.capitalize}!")
      prompt("CPU chooses #{cpu_choice.capitalize}!")
      prompt(results[0].to_s)
    elsif win?(cpu_choice, player_choice, 0)
      stats[:cpu_wins] += 1
      prompt("#{username} chooses #{player_choice.capitalize}!")
      prompt("CPU chooses #{cpu_choice.capitalize}!")
      prompt(results[1].to_s)
    elsif win?(cpu_choice, player_choice, 1)
      stats[:cpu_wins] += 1
      prompt("#{username} chooses #{player_choice.capitalize}!")
      prompt("CPU chooses #{cpu_choice.capitalize}!")
      prompt(results[1].to_s)
    else
      stats[:tie] += 1
      prompt("#{username} chooses #{player_choice.capitalize}!")
      prompt("CPU chooses #{cpu_choice.capitalize}!")
      prompt(results[2].to_s)
    end

    prompt("The score is #{username} #{stats[:player_wins]},\
 CPU #{stats[:cpu_wins]}, #{stats[:tie]}")
    if stats[:player_wins] == 2
      prompt("#{username} is the Grand Champion! Congratulations!")
      break
    elsif stats[:cpu_wins] == 2
      prompt("CPU is the champion! Better luck next time.")
      break
    else
      prompt("Please get ready for the next round...")
    end
    sleep 8
    system("clear") || system("cls")
    prompt(MSG['user_input'])
  end

  prompt(MSG['play_again'])

  loop do
    play_again = gets.chomp.downcase
    case play_again
    when "y", "yes"
      stats[:player_wins] = 0
      stats[:cpu_wins] = 0
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