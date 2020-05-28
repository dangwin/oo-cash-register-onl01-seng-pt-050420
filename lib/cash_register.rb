class CashRegister 
  
 attr_accessor :discount, :total, :item, :price, :shopping_cart, :for_items 
 

 
  def initialize(discount = 0) 

    @total = 0
    @discount = discount if discount != 0
    @shopping_cart = []
    @for_items = []
   end 
   
   def add_item(item, price, quantity = 1)
     i_info = {}
     i_info[:name] = item 
     i_info[:price] = price 
     i_info[:quantity] = quantity
     
     @shopping_cart << i_info
     @for_items << i_info[:name]
     
     @total += price * quantity
     
   end 
   
   def apply_discount
     if @discount 
       total_discount = (@total * @discount) / 100
       @total -= total_discount
       result = "After the discount, the total comes to $#{@total}."
     else 
      result = "There is no discount to apply."
     end 
    return result 
  end 
  

    def items 
      
      return @for_items
    end 
  
  
end 
 