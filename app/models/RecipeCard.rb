class RecipeCard 
    @@all = [] 
    attr_accessor :date, :rating, :user, :recipe 
    
    # instance methods 
    def initialize(date,rating,user,recipe) 
        @date = date 
        @rating = rating 
        @user = user 
        @recipe = recipe 
        @@all << self 
    end 

    #RecipeCard#date should return the date of the entry
    # RecipeCard#rating should return the rating (an integer) a user has given their entry
    # RecipeCard#user should return the user to which the entry belongs
    # RecipeCard#recipe should return the recipe to which the entry belongs

    # class methods 
    def self.all 
        @@all 
    end 
end 