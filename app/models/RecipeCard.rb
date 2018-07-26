

class RecipeCard

attr_reader :user, :recipe, :date, :rating
  @@all = []
  def initialize(user, recipe, date, rating)
    @user = user
    @recipe = recipe
    @date = date
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end

  def self.get_recipecards_by_user( user )
    self.all.select{|recipecard|
      recipecard.user == user
    }
  end

  def self.get_recipecards_by_recipe( recipe)
    self.all.select{|recipecard|
      recipecard.recipe == recipe
    }
  end

end
