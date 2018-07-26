require_relative '../config/environment.rb'

#binding.pry


def test(str, v1=nil, v2=nil)
 if v1 != v2
   puts str.red
   puts "\texpect: #{v2}, \n\tgot: #{v1}".red
 else
   puts str.green
 end
end
user1 = User.new("user1")
user2 = User.new("user2")
user3 = User.new("user3")
user4 = User.new("user4")
user5 = User.new("user5")
user6 = User.new("user6")
user7 = User.new("user7")
user8 = User.new("user8")
user9 = User.new("user9")
user10 = User.new("user10")


recipe1 = Recipe.new("recipe1")
recipe2 = Recipe.new("recipe2")
recipe3 = Recipe.new("recipe3")
recipe4 = Recipe.new("recipe4")
recipe5 = Recipe.new("recipe5")
recipe6 = Recipe.new("recipe6")
recipe7 = Recipe.new("recipe7")
recipe8 = Recipe.new("recipe8")
recipe9 = Recipe.new("recipe9")


rc1 = RecipeCard.new(user1, recipe1, "date1", 5)
rc2 = RecipeCard.new(user1, recipe2, "date2", 15)
rc3 = RecipeCard.new(user1, recipe3, "date3", 8)
rc4 = RecipeCard.new(user1, recipe4, "date4", 4)
rc5 = RecipeCard.new(user3, recipe2, "date5", 10)
rc6 = RecipeCard.new(user4, recipe2, "date6", 5)
rc7 = RecipeCard.new(user5, recipe2, "date7", 5)
rc8 = RecipeCard.new(user2, recipe8, "date8", 5)
rc9 = RecipeCard.new(user3, recipe9, "date9", 5)
rc10 = RecipeCard.new(user6, recipe7, "date10", 5)
rc11= RecipeCard.new(user7, recipe1, "date111", 5)
rc12 = user1.add_recipe_card(recipe9, "date10",10)

ing1 = Ingredient.new()
ing2 = Ingredient.new()
ing3 = Ingredient.new()
ing4 = Ingredient.new()
ing5 = Ingredient.new()
ing6 = Ingredient.new()
ing7 = Ingredient.new()
ing8 = Ingredient.new()
ing9 = Ingredient.new()
ing10 = Ingredient.new()

user1.declare_allergen(ing1)
user1.declare_allergen(ing2)
user1.declare_allergen(ing3)
user2.declare_allergen(ing1)
user2.declare_allergen(ing5)
user3.declare_allergen(ing6)
user4.declare_allergen(ing8)
recipe1.add_ingredients([ing1,ing2])
recipe1.add_ingredients([ing4])


test "user"
test "user1.recipes ",user1.recipes, [ recipe1,recipe2,recipe3,recipe4,recipe9]
test "user1.top_three_recipes ", user1.top_three_recipes,[recipe2,recipe9,recipe3]
test "user1.most_recent_recipe ", user1.most_recent_recipe, recipe9
test "user1.allergens ", user1.allergens, [ing1,ing2,ing3]

test "recipe "
test "Recipe.most_popular ", Recipe.most_popular, recipe2
test "recipe1.users ", recipe1.users,[user1, user7]
test "recipe1.ingredients ", recipe1.ingredients, [ing1,ing2,ing4]
test "recipe1.allergens ", recipe1.allergens, [ing1,ing2]

test "Ingredient"
test "Ingredient.most_common_allergen ", Ingredient.most_common_allergen,ing1
