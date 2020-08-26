class CashRegister

attr_accessor :total, :discount, :items, :last_transaction

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
    voided_transaction = self.transactions.pop
    voided_item = self.items.pop
    
    if self.transactions.count == 0 || self.transactions.count == nil
      0.0
    else
      self.total -= self.voided_transaction
    end
  end

end

register = CashRegister.new(20)
register.add_item("beans",5.1)
register.add_item("beans",2.0, 2.0)
register.void_last_transaction