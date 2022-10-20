def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

p color_valid("blue")

def color_valid_two(color)
  color == "blue" || color == "green"
end

p color_valid_two("red")