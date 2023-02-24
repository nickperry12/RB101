=begin
---------------- Problem

Write a function that when given a URL as a string, parses out just the domain
name and returns it as a string. For example:

domain_name("http://github.com/carbonfive/raygun") == "github"
domain_name("http://www.zombie-bites.com") == "zombie-bites"
domain_name("https://www.cnet.com") == "cnet"

Restate the problem:

Create a method that accepts a string as an argument, and returns the domain
name from the passed in string


Input: String

Output: String




Explicit Rules:
- Only trying to return the domain name



Implicit Rules:
- None implied


Modelling:

I: http://google.com
O: google

If the string starts with 'http'
=> Split at the '/'

If it starts with "www"
=> Split at the '.'


---------------- Examples

p domain_name("http://google.com") == "google"
p domain_name("http://google.co.jp") == "google"
p domain_name("www.xakep.ru") == "xakep"
p domain_name("https://youtube.com") == "youtube"

---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given a string `str` */

Take the given string and remove the following patterns:
  - http
  - https
  - www

Split the modified string at any periods
  - Return the item at index 0 of the resulting array


=end

def domain_name(str)
  str.gsub!(/(http:..)|(https:..)|(www.)/, '')
  str.split(".")[0]
end



p domain_name("http://google.com") #== "google"
p domain_name("http://google.co.jp") #== "google"
p domain_name("www.xakep.ru") #== "xakep"
p domain_name("https://youtube.com") #== "youtube"
