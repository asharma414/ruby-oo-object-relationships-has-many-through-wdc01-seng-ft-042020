class Meal

    attr_reader :waiter, :customer, :total, :tip
    @@all = []

    def initialize(waiter, customer, total, tip)
        @waiter, @customer, @total, @tip = waiter, customer, total, tip
        customer.meals = self
        customer.waiters = waiter
        waiter.meals = self
        @@all << self
    end

    def self.all
        @@all
    end
end