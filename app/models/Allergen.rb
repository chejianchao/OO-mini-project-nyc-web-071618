

class Allergen

  attr_reader :name, :user, :ingredient
  @@all = []
  def initialize(name, user, ingredient)
    @name = name
    @user = user
    @ingredient = ingredient
    @@all << self
  end

  def self.all
    @@all
  end

  def self.get_allergens_by_user(user)
    self.all.select{|allergen|
      allergen.user == user
    }
  end

  def self.get_allergens_by_ingredient(ingredient)
    self.all.select{|allergen|
      allergen.ingredient == ingredient
    }
  end
end
