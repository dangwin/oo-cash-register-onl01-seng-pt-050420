class CashRegister 
  
 attr_accessor :discount, :total 
 

 
  def initialize(discount = 0) 

    @total = 0
    @discount = discount if discount != 0
    @shopping_cart = []
   end 
   
   def add_item(item, price, quantity = 1)
     i_info = {}
     i_info[:name] = item 
     i_info[:price] = price 
     i_info[:quantity] = quantity
     
     @shopping_cart << i_info
     
     @total += price * quantity
     
   end 
   
   def apply_discount
     
     

   
 end 
 