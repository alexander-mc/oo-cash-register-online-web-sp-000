class CashRegister

attr_accessor :total, :discount

  def initialize(discount = 20)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity = nil)
    self.total = 
    
  end

end

register = CashRegister.new
register.add_item("beans",5.1, 5)