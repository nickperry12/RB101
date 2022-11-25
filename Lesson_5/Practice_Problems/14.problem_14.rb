=begin

*** RETURN TO THIS PROBLEM FOR FURTHER UNDERSTANDING ***

Practice Problem 14

Given this data structure write some code to return an array containing the
colors of the fruits, and the sizes of the vegetables. The sizes should be
uppercase and the colors should be capitalized
=end

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

arr = hsh.map do |key, value|
  if value[:type] == 'fruit'
    value[:colors].map do |color|
      color.capitalize
    end
  elsif value[:type] == 'vegetable'
    value[:size].upcase
  end
end

p arr

# Should return: [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

=begin

From the problem description we know that we want to return an array where each
item in the outer hash is represented by a particular value from within each
nested hash, so map is a good choice of method to call on the initial hsh
object.

Since the value to be returned to map by the outer block depends on whether
:type equates to fruit or vegetable, we need to use a conditional statement to
determine what is returned and what other actions are performed on those values
prior to them being returned by the outer block.

The situation for :colors is complicated slightly in that we want to call
capitalize on the strings but they are nested within arrays so we need to
iterate through those arrays in order to access them.

=end