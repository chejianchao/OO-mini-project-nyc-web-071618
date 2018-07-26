


class Ingredient
  @@all = []

  def initialize()
    @@all << self
  end

  def self.all
    @@all
  end
  
  def self.most_common_allergen
    max = 0
    inst = nil
    self.all.each{|ingredient|
      size = Allergen.get_allergens_by_ingredient(ingredient).size
      max, inst = size, ingredient if size > max
    }
    inst
  end
end
