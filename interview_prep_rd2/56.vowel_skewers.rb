# An authentic vowel skewer is a skewer with a delicious and juicy mix of
# consonants and vowels. However, the way they are made must be just right:

# Skewers must begin and end with a consonant.
# Skewers must alternate between consonants and vowels.
# There must be an even spacing between each letter on the skewer, so that there
# is a consistent flavour throughout.
# Create a function which returns whether a given vowel skewer is authentic.

# Examples
# is_authentic_skewer("B--A--N--A--N--A--S") ➞ true

# is_authentic_skewer("A--X--E") ➞ false
# # Should start and end with a consonant.

# is_authentic_skewer("C-L-A-P") ➞ false
# # Should alternate between consonants and vowels.

# is_authentic_skewer("M--A---T-E-S") ➞ false
# # Should have consistent spacing between letters.
# Notes
# All tests will be given in uppercase.
# Strings without any actual skewer "-" or letters should return false.
=begin
---------------- Problem
Restate the problem:

Create a method that accepts a string for an argument and returns true if the
string meets the following conditions

1. It begins and ends with a consonant
2. It alternates between consonants and vowels
3. There is even spacing between each letter (spaces being dashes)

Returns false otherwise


Input: String

Output: Boolean

Explicit Rules:
1. It begins and ends with a consonant
2. It alternates between consonants and vowels
3. There is even spacing between each letter (spaces being dashes)


Implicit Rules:
- none implied


Modelling:

I: "B--A--N--A--N--A--S"
O: true

Result = false

First condition to check => are all even indexed letters consonants?

Get a string of just letters => remove all non-alpha chars => "BANANAS"
  - Select all odd indexed chars => if all odd inexed chars are not vowels =>
    result = true, else return false

Second check => are all odd indexed chars vowels?
  - Select all even indexed chars => if all even indexed chars are vowels =>
    result remain true, else return false

Are the letters separated by even amount of spaces?
=> Create a string removing all alphabeticals, replace with a space
' -- -- --' => ['--', '--', .... ] check to see if all strings are equal to the
size of the first one => result = true if they are, else return false


---------------- Examples

p is_authentic_skewer("B--A--N--A--N--A--S") == true
p is_authentic_skewer("L-A-B-O-R-A-T-O-R") == true
p is_authentic_skewer("M-----E-----M-----E-----S") == true
p is_authentic_skewer("A--X--E") == false
p is_authentic_skewer("C-L-A-P") == false
p is_authentic_skewer("M--A---T-E-S") == false
p is_authentic_skewer("C--H----E---E-S-E") == false
p is_authentic_skewer("B-E-L-L") == false
p is_authentic_skewer("T-I-T-A-N-I-C") == true
p is_authentic_skewer("J--E--Q--A--H--E--K--A--Y--U--X--A--P--I--F") == true

---------------- Data Structures

I: String
Intermediate: Array
O: Boolean

---------------- Algorithm

/* given a string `str` */

Initialize `result` to `false`

Initialize `vowels` to a collection of upcased vowels

Initalize `letters`
  - Remove all non-alphabetical letters from the string, replace with an empty
    string
  - Split chars into an array

Initialize `spaces`
  - Remove all letters from the string, replace with a space
  - Split chars into an array

Iterate through `letters` with it's indices
  - Select all odd indexed letters
  - If all odd indexed letters are no included in vowels, result = `true`, else
    return `false`

Iterate through `letters` with it's indices
  - Select all even indexed letters
  - If all even indexed letters are included in vowels, result = true, else
    return `false`

Check if all elements within `spaces` have a size equal to the first element
  - Result = `true` if they are, else return `false`

Return `result`

=end

def is_authentic_skewer(str)
  result = false
  vowels = %w(A E I O U)
  letters = str.gsub(/[^A-Za-z]/, '').chars
  spaces = str.gsub(/[A-Za-z]/, ' ').split

  return false if letters.empty?

  if letters.select.with_index { |_, idx| idx.even? }
            .all? { |let| !vowels.include?(let)}
    result = true
  else
    return false
  end
  
  if letters.select.with_index { |_, idx| idx.odd? }
                   .all? { |let| vowels.include?(let)}
  result = true
  else
    return false
  end

  if spaces.all? { |space| space.size == spaces[0].size }
    result = true
  else
    return false
  end

  if str.split('-').all? { |str| str.size < 2 }
    result = true
  else
    return false
  end

  result
end





p is_authentic_skewer("B--A--N--A--N--A--S") == true
p is_authentic_skewer("L-A-B-O-R-A-T-O-R") == true
p is_authentic_skewer("M-----E-----M-----E-----S") == true
p is_authentic_skewer("A--X--E") == false
p is_authentic_skewer("C-L-A-P") == false
p is_authentic_skewer("M--A---T-E-S") == false
p is_authentic_skewer("C--H----E---E-S-E") == false
p is_authentic_skewer("B-E-L-L") == false
p is_authentic_skewer("T-I-T-A-N-I-C") == true
p is_authentic_skewer("J--E--Q--A--H--E--K--A--Y--U--X--A--P--I--F") == true
p is_authentic_skewer("F-U-W") == true
p is_authentic_skewer("C-----O-----K-----O-----Z-----O-----D-----E-----W-----O-----T") == true
p is_authentic_skewer("T----O----M----O----R") == true
p is_authentic_skewer("OZAEZ-----EE") == false
p is_authentic_skewer("--UXGV") == false
p is_authentic_skewer("W-E-D-A-X-E-P-I-Y-O-L-E-V-A-W") == true
p is_authentic_skewer("J---U---X---O---G---O---G---I---D---U---J---O---K---U---V") == true
p is_authentic_skewer("APU---V") == false
p is_authentic_skewer("U---WIE--------------UACO") == false
p is_authentic_skewer("EOAOTJCUE-----U----K-----") == false
p is_authentic_skewer("S---O---S---I---W---A---H---U---W---I---J---I---Q---A---C") == true
p is_authentic_skewer("R-O-D-U-P-U-C-A-M-A-R-A-T-I-V-U-R") == true
p is_authentic_skewer("C----A----T----A----Q----O----M----A----F") == true
p is_authentic_skewer("C---A---P---I---B---A---R---O---Z---E---W---A---L---O---J") == true
p is_authentic_skewer("H---------O-------") == false
p is_authentic_skewer("----------------") == false
p is_authentic_skewer("-----OA-------AOP-EJE-UIE---WH") == false
p is_authentic_skewer("VKIQYQO----OI----IFII") == false
p is_authentic_skewer("GOXXOC--GLYO--BS----------AO----") == false
p is_authentic_skewer("R--I--G--A--J--A--N--A--H--O--K--A--L--U--Q--O--W--A--W--E--R") == true
p is_authentic_skewer("Q-----E-----P-----U-----X") == true
p is_authentic_skewer("EOE----") == false
p is_authentic_skewer("CEQEE-----ETUOYXL") == false
p is_authentic_skewer("EOOJSI-ER------Z") == false
p is_authentic_skewer("--OU") == false
p is_authentic_skewer("----KWVEGUMDDI-MNED") == false
p is_authentic_skewer("B---A---X---I---N---O---Z---O---D---O---Q") == true
p is_authentic_skewer("A---O------FGOK-------EU---EU") == false
p is_authentic_skewer("KG----O-----------") == false
p is_authentic_skewer("Z---I---T---U---H---O---G---U---R---A---W---E---G---U---W") == true
p is_authentic_skewer("H--I--K--U--Q--A--L--O--L--O--H--A--B--E--Z") == true
p is_authentic_skewer("ICU-----TA---L-------O--FE----REE") == false
p is_authentic_skewer("C-----A-----W-----U-----H-----I-----Z-----U-----J-----I-----L-----O-----C-----I-----K-----E-----R") == true
p is_authentic_skewer("H-----I-----R-----A-----Q-----A-----S-----O-----F-----O-----N-----A-----R") == true
p is_authentic_skewer("AA----IWEU") == false
p is_authentic_skewer("Z----E----S----A----V----A----M----I----V----O----V----E----G----U----G----A----M") == true
p is_authentic_skewer("---YAAT--E") == false
p is_authentic_skewer("K---O---L---A---D---I---Y---O---G") == true
p is_authentic_skewer("J-O-W-E-C-E-D-A-C-U-V-E-V") == true
p is_authentic_skewer("UKMU") == false
p is_authentic_skewer("D-I-F") == true
p is_authentic_skewer("K----O----B----I----F----O----S----A----H----I----W----A----V----I----P----O----P") == true
p is_authentic_skewer("-EUUFPV-------") == false
p is_authentic_skewer("Z-O-F-I-P-A-K-I-Z-I-H-U-B-E-R-A-W-U-K") == true
p is_authentic_skewer("B-----E-----R-----E-----K-----I-----X-----I-----V-----E-----P-----I-----F-----I-----Y-----A-----C-----U-----Q") == true
p is_authentic_skewer("Y-----A-----K-----O-----T-----O-----B-----O-----Q-----A-----M-----O-----H-----E-----Y-----O-----D-----A-----H-----A-----T") == true
p is_authentic_skewer("Q-I-F") == true
p is_authentic_skewer("-----D-----EKGAO") == false
p is_authentic_skewer("T--E--X--I--S--I--T--O--K--O--Z--O--M") == true
p is_authentic_skewer("C-U-D-I-N-I-N-O-H-I-J") == true
p is_authentic_skewer("P--O--D--U--Q--E--G--A--R--I--J--U--V--A--Y") == true
p is_authentic_skewer("--------EU") == false
p is_authentic_skewer("V----I----L----A----L----U----Z----U----T----E----R----E----X----A----G----O----W----O----H----E----L") == true
p is_authentic_skewer("F--E--S--I--K--O--X--U--D--I--J--A--Q--I--Y--E--M") == true
p is_authentic_skewer("WL") == false
p is_authentic_skewer("Z---NDIA---O-----KV--HTM----A") == false
p is_authentic_skewer("S-O-F-A-D-E-J-O-X-E-C-O-M-U-B-E-D-E-D") == true
p is_authentic_skewer("F-E-B-E-B-O-K-O-D-I-K-O-J-E-S-I-D") == true
p is_authentic_skewer("L-A-B-A-F-A-D-I-P-I-P") == true
p is_authentic_skewer("QOM--IBI") == false
p is_authentic_skewer("---P---P---A-----GAG-----KUVL") == false
p is_authentic_skewer("IXJ---Q") == false
p is_authentic_skewer("DA-----XPZER--PO----PIHUR") == false
p is_authentic_skewer("UNOO-------") == false
p is_authentic_skewer("S-----A-----Z-----O-----J-----U-----Q-----O-----C-----O-----V") == true
p is_authentic_skewer("DA-------E---A--GLU---------O-----D") == false
p is_authentic_skewer("J--A--D--U--N--A--W--O--H--O--Q--A--Z--E--V--U--S--O--Y--O--R") == true
p is_authentic_skewer("UE----Q--DBZA--") == false
p is_authentic_skewer("K-----A-----N-----A-----Q-----I-----L-----U-----X-----E-----H-----A-----S-----I-----Y-----A-----M") == true
p is_authentic_skewer("X--E--V--U--Y--U--T--O--D--I--P--O--T--U--Q--I--D--A--R") == true
p is_authentic_skewer("I--HWT----YB----UUTEIZ-TI") == false
p is_authentic_skewer("IA") == false
p is_authentic_skewer("E-----E---RXU") == false
p is_authentic_skewer("RM-ITU-----") == false
p is_authentic_skewer("----PODEUZU--ZSCTI") == false
p is_authentic_skewer("----M---I-") == false
p is_authentic_skewer("W----I----J----A----Y----O----G----U----Y----I----S----A----B----E----R----I----H----E----M----U----J") == true
p is_authentic_skewer("V----I----K----O----B----I----N----E----H----U----B") == true
p is_authentic_skewer("R-A-S-E-J-I-M-E-W-E-H-A-B-U-R-E-P-A-T-U-M") == true
p is_authentic_skewer("W----U----G") == true
p is_authentic_skewer("F--A--V--E--B--I--G--I--G") == true
p is_authentic_skewer("E-----------JXA---AXU------MIRIX") == false
p is_authentic_skewer("IWZI-----OB----U-----EAI") == false
p is_authentic_skewer("CEP--RP---OP-MIE-----G---") == false
p is_authentic_skewer("U-----------ZY-PASUEA---") == false
p is_authentic_skewer("PA") == false
p is_authentic_skewer("ZAN----LKAM") == false
p is_authentic_skewer("J-RZR--------U-------O-----") == false
p is_authentic_skewer("K----I----Z") == true
p is_authentic_skewer("L--U--C--E--S--I--Z--U--Z--I--H--A--F--O--L--I--C--A--K") == true
p is_authentic_skewer("UN----V") == false
p is_authentic_skewer("A-------DZM---OCQL---UE-----U") == false
p is_authentic_skewer("M---E---M") == true
p is_authentic_skewer("L-A-C-O-X-O-Z-O-F-A-Z-E-H-U-L-A-L-U-N-U-Z") == true
p is_authentic_skewer("AY") == false
p is_authentic_skewer("R--I--S--U--K--E--B--A--F") == true
p is_authentic_skewer("H--E--K--A--C--I--N--A--X--U--J--A--P") == true
p is_authentic_skewer("Y-----A-----L-----U-----V-----A-----V-----E-----J") == true
p is_authentic_skewer("K---I---D---A---B---E---X---U---K---U---H") == true