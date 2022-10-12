require "pry"

class CashRegister
    attr_accessor :total, :discount, :total, :items, :last_transaction

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 1)
        self.last_transaction = price * quantity
        self.total += last_transaction
        quantity.times {self.items << title}
    end

    def apply_discount
        if self.discount != 0
            self.total = ((100 - self.discount) * self.total) / 100
            "After the discount, the total comes to $#{self.total}."
        else "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total -= last_transaction
    end

end