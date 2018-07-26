

class User
  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def recipes
    RecipeCard.get_recipecards_by_user(self).map{|rc|
      rc.recipe
    }
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(self, recipe, date, rating)
  end

  def declare_allergen(ingredient, name="")
    Allergen.new(name, self, ingredient);
  end

  def allergens
    Allergen.get_allergens_by_user(self).map{|allergen|
      allergen.ingredient
    }
  end

  def top_three_recipes
    RecipeCard.get_recipecards_by_user(self).sort{|a,b|
      b.rating <=> a.rating
    }[0..2].map{|rc|
      rc.recipe
    }
  end

  def most_recent_recipe
    self.recipes.last
  end
end
