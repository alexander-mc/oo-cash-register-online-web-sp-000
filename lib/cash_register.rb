class CashRegister

attr_accessor :total, :discount, :items, :transactions

  def initialize(discount = 0)
    @total = 0.0
    @discount = discount
    @items = []
    @transactions = []
  end
  
  def add_item(title, price, quantity = 1)

    self.total += price * quantity
    
    i = 0
    while i < quantity
      self.items << title  
      self.transactions << price
      i += 1
    end
    
  end

  def apply_discount
    if self.discount == 0
      "There is no discount to apply."
    else
      self.total *= (1 - (self.discount * 0.01))
      "After the discount, the total comes to $#{self.total.to_i}."
    end
  end

  def void_last_transaction

    if self.transactions == []
      0.0
    else
      voided_item = self.items.pop    
      voided_trasaction = self.transactions.pop
      self.total -= voided_trasaction
    end
    
  end

end

register = CashRegister.new
register.add_item("tomato",1.76,2)
register.void_last_transaction