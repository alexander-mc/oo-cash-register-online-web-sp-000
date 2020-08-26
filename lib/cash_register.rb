class CashRegister

attr_accessor :total, :discount

  def initialize(discount = 20)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    self.total += price * quantity
  end

  def apply_discount
    self.total *= 1 - (self.discount * 0.01)
  end

end

register = CashRegister.new
register.add_item("beans",5.1)
register.add_item("beans",2.0 * 2.0)
puts register.total