class CashRegister 
  
 attr_accessor :discount, :total, :item, :price, :shopping_cart, 
 

 
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
      name = []
      @shopping_cart.each do |i_info|
        for qty in 1.. i_info[:quantity]
        name << i_info[:name]
      end 
    end
    name 
      
    end 
  
  def void_last_transaction
    if @cart.length == 0 
      return 0.to_f 
    else 
      amount_reduced = @cart[-1][:price]
      if @cart[-1][:quantity] > 1 
        quantity = @cart[-1][:quantity]
        @total -= amount_reduced * quantity
      else
        @total -= amount_reduced
      end
      @cart.delete(@cart[-1])
      @items.delete(@items[-1])
    end
    @total
  end
    
    
    
    
    
  
end 
end 
 