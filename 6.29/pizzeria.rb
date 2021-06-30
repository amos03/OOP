require_relative("pizza")
#links the pizza.rb file in the same directory
class Pizzeria

    #class variable has two @ symbols: @@
    @@all_pizzeria = []
    @@total_sales =0

    def initialize(shop_name)
        @name=shop_name 
        @is_open = false
        @stock = 0
        @pizza_sales = 0
        @@all_pizzeria << self
        #inside initialize, self points to the instance that just got created
        # self is equivalent to "this" in other languages

    end

attr_accessor :pizza_sales, :name, :is_open

    #class methods: self as part of a method name implies that this is a class method
    #can only be triggered by class itself 
    # class variable can be accessed by class method and instance method
    # instance variable can only be accessed by instance method not by class method


    def self.total_sales
        @@total_sales
    end

    def self.show_shops
        @@all_pizzeria.each_with_index do |shop, idx|
            p "*********Shop #{idx +1}**********"
            p "    Name::::: #{shop.name}"
            p "     # of sales:: #{shop.pizza_sales}"
            p "     Open::: #{shop.is_open}"
        end
    end

    def self.local_sales(store)
        return store.pizza_sales 
    end



    def open
        @is_open = true
    end

    def close 
        @is_open=false
    end
    
    def restock
        if @is_open == false
            @stock += 5
        end
    end

    def order(toppings)
        if @is_open && @stock >0
            @stock -=1
            @pizza_sales +=1
            @@total_sales +=1
        end
        new_pizza = Pizza.new(toppings)
        #new_pizza = local variable, eventually we return it and that's how we can transfer it outside the method
        #bake the pizza
        new_pizza.bake
        #cut the pizza
        4.times do
            new_pizza.cut
        end

        #return the pizza
        return new_pizza
    end
    end


end


super_pizza = Pizzeria.new("Super Pizza")
awesome_pizza = Pizzeria.new("Awesome Pizza")

p super_pizza

super_pizza.restock
super_pizza.open
p super_pizza

awesome_pizza.restock
awesome_pizza.open

pizza1 = Pizza.new(["cheese","pepper"])
p pizza1

my_pizza = super_pizza.order(["cheese","mushrooms"])
my_pizza = super_pizza.order(["cheese","mushrooms"])
my_pizza = super_pizza.order(["cheese","mushrooms"])
my_pizza = super_pizza.order(["cheese","mushrooms"])
my_pizza = super_pizza.order(["cheese","mushrooms"])

new_pizza = awesome_pizza.order(["onions", "olives"])

p my_pizza

p super_pizza

# only a class can call a class method:
p Pizzeria.total_sales

Pizzeria.show_shops

p Pizzeria.local_sales(super_pizza)