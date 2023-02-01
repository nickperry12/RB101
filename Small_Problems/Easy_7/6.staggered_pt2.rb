=begin

Staggered Caps (Part 2)

Modify the method from the previous exercise so it ignores non-alphabetic
characters when determining whether it should uppercase or lowercase each
letter. The non-alphabetic characters should still be included in the return
value; they just don't count when toggling the desired case.

def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end

P:

Restate the problem:

Modify the given method so that it only changes the case if the character is an
alphabetical character. The method should ignore all non-alphabetical character
and continue the stagger case pattern from the last alphabetical char. 

Explicit Rules:
- ignore all non-alphabetical chars
- resume stagger case pattern from the last alphabetical char

Implicit Rules:
- none identified

E:

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

D:

- #chars to split our strings into characters
- possibly use the ternary operator
- regex to check if alphabetical or non alphabetical chars

A:

/* given a string */

1. initialize `toggle` to `true`
2. split the string into single chars and iterate over each one
3. if the current char is non-alphabetical, skip to the next char
4. for the alphabetical chars, if `toggle` is true, upcase the char
4b. switch `toggle` to false
5. if `toggle` is is `false`, downcase the char
5b. switch `toggle` to `true`
6. join the chars back together after iterating through all of them

=end

def staggered_case(str)
  toggle = true

  str.chars.map do |char|
    if char =~ /[A-Za-z]/
      if toggle
        toggle = false
        char.upcase
      else
        toggle = true
        char.downcase
      end
    else
      char
    end
  end.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
