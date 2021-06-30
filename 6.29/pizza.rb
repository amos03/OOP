class Pizza

    def initialize(new_toppings)
        @toppings=new_toppings
        @baked=false
        @slices=0
    end

    #instance methods
    def bake
        @baked=true
    end

    def cut 
        if @baked
            @slices += 2
    end
end

    def eat
        if @slices >=1 && @baked 
            @slices -=1
        else
            p "You're out of slices to eat."
        end
    end


end

p "-----------------"
pizza1 = Pizza.new(["cheese","pepper"])
p pizza1

p pizza1 #if you use puts, it will not give you the states in terminal. Unless you do: puts.pizza1.inspect

pizza1.bake

p "-----------------cutting the pizza"
4.times do
    pizza1.cut
end




p "-----------------eating the pizza"
11.times do
pizza1.eat
p pizza1
end

p "-----------------"
p "-----------------"
p "-----------------"
p "-----------------"
p "-----------------"
p "-----------------"