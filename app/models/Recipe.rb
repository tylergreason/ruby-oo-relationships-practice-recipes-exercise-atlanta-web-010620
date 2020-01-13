class Recipe
    # attr_accessor :user, :ingredient
    @@all = []
    def initialize
        # (user, ingredient)
        # @x.archived_user_60192307 = user
        # @ingredient = ingredient
        @@all << self
    end

    def self.all
        @@all
    end

    
    #   Recipe#users should return the user instances who have recipe cards with this recipe
    def users 
        RecipeCard.all.select{|recipe_card| recipe_card.recipe == self}.map {|recipe_card| recipe_card.user}
    end 
    
    def add_ingredients(ingredients)
        ingredients.each {|ingredient| RecipeIngredient.new(ingredient,self)}
    end

    def ingredients
        RecipeIngredient.all.select{|ingredient| ingredient.recipe == self}
    end
    
    def allergens
        # Recipe#allergens should return all of the Ingredients in this recipe that are allergens for Users in our system.

        # ingredients.each{|ingredient| 
        #     Allergy.all.each {|allergy| 
        #     if allergy.ingredient == ingredient
        #         users_with_allergies << allergy.user
        #     end 
        #         }
        #     }
        #     users_with_allergies

        ingredients.each {|ingredient| 
            Allergy.all.select{|allergy| allergy.ingredient == ingredient}.map {|allergy|allergy.ingredient}
        }
    end
    
    def most_popular
        # Recipe.most_popular should return the recipe instance with the highest number of users (the recipe that has the most recipe cards)
        
        # make array of the recipes in RecipeCard.all 
        recipes = RecipeCard.all.map{|recipe_card| recipe_card.recipe}
        # iterate through that array and find the most frequent recipe 
        recipes.max_by{|recipe| recipes.count(recipe)}
    end
end