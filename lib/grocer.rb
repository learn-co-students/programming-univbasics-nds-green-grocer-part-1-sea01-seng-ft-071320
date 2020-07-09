require 'pry'

def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  i = 0 
  while i < collection.length do 
    item_name =  collection[i]
    if item_name[:item] == name 
      return item_name
    end
    i+=1
  end

end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
 new_cart =[]
 i = 0 
 
 while i < cart.length do 
   new_item = cart[i]
   if find_item_by_name_in_collection(new_item[:item], new_cart) == nil
     new_item[:count] = 1 
     new_cart.push(new_item)
   else 
     new_item[:count] += 1
   end
   i += 1 
 end
 new_cart
end


  