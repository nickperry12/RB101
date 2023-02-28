=begin
---------------- Problem

Pete likes to bake some cakes. He has some recipes and ingredients.
Unfortunately he is not good in maths. Can you help him to find out, how many
cakes he could bake considering his recipes? Write a function cakes(), which
takes the recipe (object) and the available ingredients (also an object) and
returns the maximum number of cakes Pete can bake (integer).

For simplicity there are no units for the amounts (e.g. 1 lb of flour or 200 g
of sugar are simply 1 or 200). Ingredients that are not present in the objects,
can be considered as 0.

Examples:

// must return 2

cakes({flour: 500, sugar: 200, eggs: 1}, {flour: 1200, sugar: 1200, eggs: 5,
milk: 200});

// must return 0

cakes({apples: 3, flour: 300, sugar: 150, milk: 100, oil: 100}, {sugar: 500,
flour: 2000, milk: 2000});

Restate the problem:

Create a method that accepts two hashes as an argument, and returns an integer
representing how many cakes Pete is able to bake with the ingredients he has.
`hash1` will represent the recipe, and `hash2` will represent the ingredients
available. 

Input: Hash

Output: Integer




Explicit Rules:
- return the number of cakes able to be made given the amount of ingredients
  available



Implicit Rules:
- return 0 if `hash2` is empty


Modelling:

I: `recipe`: {"flour"=>500, "sugar"=>200, "eggs"=>1}
   `ingredients`: {"flour"=>1200, "sugar"=>1200, "eggs"=>5, "milk"=>200}

O: 2

`flour` => 1200 => 1200 / 500 == 2 (rounded down)
`sugar` => 1200 => 1200 / 200 == 6 
`eggs` => 5 => 5/1 => 5
`milk` => not needed

Min. number in available ingredients => 2 => Our output

Iterate through `ingredients` and if the keys are the same, divide the value of
`ingredients` by the value contained in `recipe`


---------------- Examples

p cakes({"flour"=>500, "sugar"=>200, "eggs"=>1},{"flour"=>1200, "sugar"=>1200,
"eggs"=>5, "milk"=>200}) == 2

p cakes({"cream"=>200, "flour"=>300, "sugar"=>150, "milk"=>100,
"oil"=>100},{"sugar"=>1700, "flour"=>20000, "milk"=>20000, "oil"=>30000,
"cream"=>5000}) == 11

p cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100,
"oil"=>100},{"sugar"=>500, "flour"=>2000, "milk"=>2000}) == 0

p cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100,
"oil"=>100},{"sugar"=>500, "flour"=>2000, "milk"=>2000, "apples"=>15,
"oil"=>20}) == 0

p cakes({"eggs"=>4, "flour"=>400},{}) == 0

p cakes({"cream"=>1, "flour"=>3, "sugar"=>1, "milk"=>1, "oil"=>1,
"eggs"=>1},{"sugar"=>1, "eggs"=>1, "flour"=>3, "cream"=>1, "oil"=>1, "milk"=>1})
== 1

---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given two hashes `recipe` and `ingredients` */

Initiaize `result` to []

Iterate through `ingredients`
  - If the current hash key, is the same as the current hash key for `recipe`
    - Divide the value in `ingredients` by the value in `recipe`
      - Append the result to `result`
  - If the keys do not match
    - Next iteration

Return the minimum value of `result`


=end

def cakes(recipe, ingredients)
  return 0 if ingredients.empty?
  result = []

  ingredients.each do |k, v|
    if recipe.include?(k)
      result << ingredients[k] / recipe[k]
    end
  end

  result.size == recipe.keys.size ? result.min : 0
end




p cakes({"flour"=>500, "sugar"=>200, "eggs"=>1},{"flour"=>1200, "sugar"=>1200, "eggs"=>5, "milk"=>200}) == 2
p cakes({"cream"=>200, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>1700, "flour"=>20000,
"milk"=>20000, "oil"=>30000, "cream"=>5000}) == 11
p cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000,
"milk"=>2000}) == 0
p cakes({"apples"=>3, "flour"=>300, "sugar"=>150, "milk"=>100, "oil"=>100},{"sugar"=>500, "flour"=>2000,
"milk"=>2000, "apples"=>15, "oil"=>20}) == 0
p cakes({"eggs"=>4, "flour"=>400},{}) == 0
p cakes({"cream"=>1, "flour"=>3, "sugar"=>1, "milk"=>1, "oil"=>1, "eggs"=>1},{"sugar"=>1, "eggs"=>1, "flour"=>3,
"cream"=>1, "oil"=>1, "milk"=>1}) == 1
