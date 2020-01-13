class User 
    @@all = [] 

    # instance methods 
    def initialize 
        @@all << self 
    end 

    def recipes 
        RecipeCard.all.select {|recipe| recipe.user == self}
    end 

    # User#add_recipe_card should accept a recipe instance as an argument, as well as a date and rating, and create a new recipe card for this user and the given recipe
    def add_recipe_card(date,rating,recipe) 
        # FINISH THIS METHOD LATER 
        new_recipe = RecipeCard.new(date,rating,self,recipe)
    end 

    # User#declare_allergy should accept anIngredient instance as an argument, and create a new Allergy instance for this User and the given Ingredient
    def declare_allergy(ingredient)
        # maybe change order later 
        my_allergy = Allergy.new(user,ingredient)
    end

    # User#allergens should return all of the ingredients this user is allergic to
    def allergens
        Allergy.all.select{|allergy| allergy.user == self}
    end 

    # User#top_three_recipes should return the top three highest rated recipes for this user.
    def top_three_recipes 
        # map RecipeCard.all for recipe's with this user 
        user_recipes = RecipeCard.all.map{|recipe_card| recipe_card.user == self}
        # sort that array by highest rating 
         user_recipes.sort_by{|recipe_card| recipe_card.rating}.last
    end 
    
    
    # User#most_recent_recipe should return the recipe most recently added to the user's cookbook.
    def most_recent_recipe 
        # map RecipeCard.all for recipe's with this user 
        user_recipes = RecipeCard.all.map{|recipe_card| recipe_card.user == self}
        # find the first entry in that array 
        user_recipes.first  
    end 

    # class methods 
    def self.all 
        @@all 
    end 
end 
