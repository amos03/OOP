class Cat
def initialize (cat_name, food, meal_time_pref)
    @name=cat_name
    @preferred_food=food
    @meal_time=meal_time_pref
end

attr_accessor :name, :preferred_food, @meal_time

cat1 = Cat.new
cat2 = Cat.new

cat1.name=("Shunra")
cat2.name=("Kalba")


end