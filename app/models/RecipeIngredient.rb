

class RecipeIngredient
  @@all = []
  attr_reader :recipe, :ingredient
  def initialize(recipe, ingredient)
    @recipe = recipe
    @ingredient = ingredient
    @@all << self
  end

  def self.all
    @@all
  end
  def self.get_recipeingredient_by_recipe(recipe)
    self.all.select{|ri|
      ri.recipe == recipe
    }
  end

  def self.get_recipeingredient_by_ingredient(ingredient)
    self.all.select{|ri|
      ri.ingredient == ingredient
    }
  end
end
