def find_item_by_name_in_collection(name, collection)
  index = 0

  while index < collection.length do
    if collection[index][:item] == name
      return collection[index]
    end
    index += 1
  end
end

def consolidate_cart(cart)
  index = 0 #array starting point 
  new_cart = [] #this is an array with the count for the hashes 
  
  while index < cart.length do
    new_cart_item = find_item_by_name_in_collection(cart[index][:item], new_cart)
    if new_cart_item != nil
      new_cart_item[:count] += 1 
    else 
      new_cart_item = {
        :item => cart[index][:item],
        :price => cart[index][:price],
        :clearance => cart[index][:clearance],
        :count => 1 
      }
      new_cart << new_cart_item
    end 
  index += 1 
  end
  new_cart
end