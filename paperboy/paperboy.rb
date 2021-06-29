class Paperboy

def initialize (paperboy_name)
    @name=paperboy_name
    @experience=0
    @earnings=0
end

attr_accessor :name, :experience
attr_reader :earnings

def quota
    0.5*@experience + 50
end

def deliver(start_address,end_address)
    if (end_address - start_address) < quota
        @experience += end_address-start_address
        @earnings -= 2
    else
        @earnings+=(0.25*quota + 0.5*(end_address-start_address-quota))
        @experience += end_address-start_address
        @earnings.to_f
    end
end

def report
    puts "I'm #{@name}, I've delivered #{@experience} papers and earned $#{@earnings} so far."
end

p paperboy1 = Paperboy.new("Shalom")

paperboy1.deliver(200,2000)

paperboy1.report

p paperboy1

p paperboy1.quota

paperboy1.deliver(100,200)

paperboy1.report

p paperboy1
end