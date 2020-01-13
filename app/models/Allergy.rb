class Allergy 
    @@all 

    # instance methods 
    def initialize(user,ingredient)
        @user = user 
        @ingredient = ingredient
        @@all << self 
    end 

    # class methods 
    # Allergy.all should return all of the Allergy instances
    def self.all 
        @@all 
    end 
end 