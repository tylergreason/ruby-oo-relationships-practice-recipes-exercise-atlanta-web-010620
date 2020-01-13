class Ingredient 
    
    @@all = [] 
    
    # instance methods 
    def initialize(ingredient)
        @ingredient = ingredient
        @@all << self 
    end 
    
    # class methods 
    # Ingredient.all should return all of the ingredient instances
    def self.all 
        @@all 
    end 
    
    def self.most_common_allergen
        # # make array of the ingredients in Allergy.all 
        ingredients = Allergy.all.map{|allergy| allergy.ingredient}
        # # iterate through that array and find the most frequent ingredient 
        ingredients.max_by{|ingredient| ingredients.count(ingredient)} 
    end
    

end    