numbers = [1, 2, 3, 4, 5]

# this method will delete the number at index 1

p numbers.delete_at(1)

# this method will delete any integers with the value of 1

p numbers.delete(1)

p numbers

# it is worth nothing that both of these methods mutate the caller but are not
# appended with [!] at the end of the method name. Remember to check the
# documentation for ruby methods to confirm whether they mutate or not