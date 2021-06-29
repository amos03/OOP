class Cat
#2 initializing with 3 instance variables
def initialize (cat_name, food, meal_time_pref)
    @name=cat_name
    @preferred_food=food
    @meal_time=meal_time_pref
end

attr_reader :name, :preferred_food, :meal_time

#3 creating two instances of Cat with names, food, meal times
cat1 = Cat.new("Shunra", "goat cutlets",16)
cat2 = Cat.new("Kalba", "organic cat treats", 8)

p cat1
p cat2

#4 return meal time
def eats_at
    puts "=============Meal Time=============" 
    if @meal_time < 12
        puts "#{@meal_time} AM"
    elsif @meal_time > 12
        puts "#{@meal_time -12} PM"
    elsif @meal_time==0
        puts "Midnight"
    else
        puts "Current meal time is invalid."
    end
    puts "==================================="
end

cat1.eats_at
cat2.eats_at

end