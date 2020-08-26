class CashRegister

attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    self.total += price * quantity
  end

  def apply_discount
    if self.discount == 0
      "There is no discount to apply."
    else
      self.total *= (1 - (self.discount * 0.01)
      "After the discount, the total comes to $#{self.total.to_i}."
    end
  end

end

register = CashRegister.new(20)
register.add_item("beans",5.1)
register.add_item("beans",2.0 * 2.0)
puts register.apply_discount