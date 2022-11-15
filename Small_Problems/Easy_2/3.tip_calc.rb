=begin
Tip calculator

Create a simple tip calculator. The program should prompt for a bill amount and
a tip rate. The program must compute the tip and then display both the tip and
the total amount of the bill.

P:

- Create a tip calculator program
- The program should prompt the user for the bill amount and tip rate (% of
bill)
- Need to compute the tip and output the dollar amount of the tip and bull total
- The output should be a message to the user, not simply just the dollar amount
- To calculate the total bill, we will sum the tip amount in dollars with the
bill amount
- To calculate the tip, we wil take the tip rate (% of bill) and multiply
by the bill amount
- Need to make sure that we round our result to the hundredth decimal place

Example:

What is the bill? 200 What is the tip percentage? 15

The tip is $30.0 The total is $230.0

D:
Input: Float
Output: String with string interpolation

A (High Level):

First, prompt the user to enter the bill amount
- initialize variable `bill_amount` and assign user input to this variable
- convert the input to a float object

Next, prompt the user to enter the tip percentage
- initialize variable `tip_rate` and assign the user input to this variable
- conver the input to a float object
- divide the input by 100

Create a method called `calculate_tip` that takes two arguments
- initialize a variable `tip_amount`
- multiply `tip_rate` by `bill_amount` and assign the result to `tip_amount`
- initialize a variable `total_bill`
- add `tip_amount` to `bill_amount` and assign the result to `total_bill`
- output `total_bill` and `tip_amount` in a message to the user
=end

def calculate_tip(bill_amount, tip_rate)
  tip_amount = bill_amount * tip_rate
  total_bill = bill_amount + tip_amount
  puts "The tip amount is $#{tip_amount.round(2)}."
  puts "The total bill is $#{total_bill.round(2)}."
end

puts "What was the amount for the bill?:"
bill_amount = gets.chomp.to_f

puts "What is the tip rate?:"
tip_rate = gets.chomp.to_f / 100

calculate_tip(bill_amount, tip_rate)