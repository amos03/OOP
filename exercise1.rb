class BankAccount
    def initialize
        @balance=0
        @interest_rate=0.005
    end

attr_accessor :balance, :interest_rate

def deposit(amount)
    @balance +=amount
    p @balance
end

def withdraw(amount)
    @balance -=amount
    p @balance
end

def gain_interest(time_days)
    @balance += @interest_rate*time_days/365
end

cibc_checking = BankAccount.new
p cibc_checking

cibc_checking.deposit(100)

cibc_checking.deposit(200)

p cibc_checking

cibc_checking.withdraw(200)

p cibc_checking

cibc_checking.gain_interest(365)

p cibc_checking
end