class Player
def initialize
    @gold_coins=0
    @health_points=10
    @lives=5
end

attr_accessor :gold_coins, :health_points, :lives

def level_up
    @lives +=1
end

def collect_treasure 
    @gold_coins+=1
    if @gold_coins % 10 == 0
        level_up
    end
end

def restart
    initialize
end

damage = 0
def do_battle(damage)
    @health_points -= damage
    if @health_points < 1
        @lives -= 1
        if @lives < 1
            restart
        end
        @health_points=10
    end
end


p player1 = Player.new

player1.level_up

p player1

10.times do
    player1.collect_treasure
end

p player1

player1.do_battle(10)

p player1

end