VALID_CHOICES = ["rock", "paper", "scissors"]

def prompt(message)
  Kernel.puts("=>#{message}")
end

loop do
  choice = ''
  loop do
    prompt("Choose one: rock, paper, scissors")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That is not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  Kernel.puts("You chose: #{choice}; computer chose: #{computer_choice}")

  if (choice == 'rock' && computer_choice == 'scissors') ||
    (choice == 'paper' && computer_choice == 'rock') ||
    (choice == 'scissors' && computer_choice == 'paper')
    prompt("You won!")
  elsif (choice == 'rock' && computer_choice == 'paper') ||
    (choice == 'paper' && computer_choice == 'scissors') ||
    (choice == 'scissors' && computer_choice == 'rock')
    prompt("The computer won!")
  else
    prompt("It's a tie!")
  end

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing!")