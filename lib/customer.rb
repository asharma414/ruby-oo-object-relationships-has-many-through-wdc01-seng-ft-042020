class Customer

    attr_reader :name, :age, :meals, :waiters
    @@all = []

    def initialize(name, age)
        @name, @age = name, age
        @meals = []
        @waiters = []
        @@all << self
    end

    def self.all
        @@all
    end

    def new_meal(waiter, total, tip)
        newMeal = Meal.new(waiter, self, total, tip)
    end

    def meals=(meal)
        @meals << meal
    end

    def waiters=(waiter)
        @waiters << waiter
    end
end