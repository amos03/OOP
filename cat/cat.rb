class Cat
def initialize (cat_name, food, meal_time_pref)
    @name=cat_name
    @preferred_food=food
    @meal_time=meal_time_pref
end

attr_accessor :name, :preferred_food, :meal_time

#3 creating two instances of Cat with names, food, meal times
cat1 = Cat.new("Shunra", "goat cutlets",16)
cat2 = Cat.new("Kalba", "organic cat treats", 8)

p cat1
p cat2


end