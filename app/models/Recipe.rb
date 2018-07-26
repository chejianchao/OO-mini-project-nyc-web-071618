
class Recipe

  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_popular
    max = 0
    inst = nil
    self.all.each{|recipe|
      size = RecipeCard.get_recipecards_by_recipe(recipe).size
      max, inst = size,recipe if size > max
      # if size > max
      #   max = size
      #   inst = recipe
      # end
    }
    inst
  end

  def users
    RecipeCard.get_recipecards_by_recipe(self).map{|rc|
      rc.user
    }
  end

  def ingredients
    RecipeIngredient.get_recipeingredient_by_recipe(self).map{|rc|
      rc.ingredient
    }
  end

  def allergens
    allerge_ingredient = Allergen.all.map{|a|a.ingredient}.uniq
    self.ingredients.select{|ingredient|
      allerge_ingredient.include?ingredient
    }
  end

  def add_ingredients(ingredient_array)
    ingredient_array.each{|ingredient|
      RecipeIngredient.new(self, ingredient)
    }
  end

end
