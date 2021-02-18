require 'open-uri'

puts "cleaning database from old cocktails..."
Cocktail.destroy_all

puts "opening URL..."
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'


puts "reading URL..."
# open
open_url = open(url).read

puts "converting into JSON..."
# Convert into array of hashes
ingredients = JSON.parse(open_url)

puts "choosing ingredients..."
# Loop through each of the elements in the 'result' Array & print some of their attributes.
ingredients["drinks"].each do |ingredient|
  Ingredient.create!(name: ingredient["strIngredient1"])
end

puts "done!"
