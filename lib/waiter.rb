class Waiter

    attr_reader :name, :yrs_experience, :meals
    attr_accessor :max_tipper
    @@all = []

    def initialize(name, experience)
        @name, @yrs_experience, @meals, @max_tipper = name, yrs_experience, [], { :customer => 0 }
        @@all << self
    end

    def meals=(meal)
        @meals << meal
        if meal.tip > self.max_tipper.values[0]
            self.max_tipper = { meal.customer => meal.tip }
        end
    end

    def new_meal(customer, total, tip)
        newMeal = Meal.new(self, customer, total, tip)
    end

    def self.all
        @@all
    end
    
    def best_tipper
        @max_tipper.keys[0]
    end
end