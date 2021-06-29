class Paperboy

def initialize (paperboy_name)
    @name=paperboy_name
    @experience=0
    @earnings
end

attr_accessor :name, :experience
attr_reader :earnings

def quota
    return 50 + 0.5*@experience
end

def deliver(start_address,end_address)
    if end_address - start_address < quota
        day_earnings = -2
    else
        day_earnings=0.25*quota + 0.5*(end_address-start_address-quota)
        return day_earnings.to_f
    end
end

def report
    puts "I'm #{@name}, I've delivered #{@experience} papers and earned $#{day_earnings} so far."
end

p paperboy1 = Paperboy.new("Shalom")

report.paperboy1

end