=begin

Domain Name

Write a function that when given a URL as a string, parses out just the domain
name and returns it as a string.

P:

Restate the problem:

Create a method that takes one argument, a string that represents a website URL,
and returns a new string that extracts the domain name. The domain name is the
portion of the URL between 'https://' or 'www.' and '.com'/'.net'/etc.

Input: String
Output: String

Explicit Rules:
- parse out the domain name and return it as a string

Implicit Rules:
- none identified

Mental Model:

We only want to grab the domain name. The domain name starts after the following
characters: '/', '.' and ends with a '.'

Example:

domain_name("http://github.com/carbonfive/raygun") == "github"
domain_name("http://www.zombie-bites.com") == "zombie-bites"
domain_name("https://www.cnet.com") == "cnet"

D:

- regex to grab the domain name?
 - can use regex for the `http` patterns and the `www.` patterns

- can split the string into chars, and slice when char == '/' or '.'

A:

/* given a string */

- if the string starts with "http"
  1. slice the chars of the string when the current char on iteration is a '/'
  2. grab the string at index 2, and join it to form one string
  3. remove the '.' at the end
- if the string starts with "www."
  1. slice the chars of the string when the current char is a '.'
  2. grab the subarr at index 1 and join it
  3. remove the '.' at the end
- return the string

=end

def domain_name(url)
  if url.start_with?('www.')
    url.chars.slice_when { |char| char == '.' }.to_a[1].join.gsub(/[.]/, '')
  elsif url.start_with?('http') && url.include?('www')
    url.chars.slice_when { |char| char == '.' }.to_a[1].join.gsub(/[.]/, '')
  elsif url.start_with?('http')
    url.chars.slice_when { |char| char == '/' || char == '.' }.to_a[2].join.gsub(/[.]/, '')
  else
    url.chars.slice_when { |char| char == '.'}.to_a[0].join.gsub(/[.]/, '')
  end
end

p domain_name("http://google.com") == "google"
p domain_name("http://google.co.jp") == "google"
p domain_name("www.xakep.ru") == "xakep"
p domain_name("https://youtube.com") == "youtube"
