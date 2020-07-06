require 'pry'

def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  
  result = nil
  collection.each do |val|
    if val[:item] == name
      result = val
      break
    end
  end

  if result != nil
    return result
  end
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  
  receipt = []
  
  cart.each do |item|
    result = {}
    item.each { |k, v| result[k] = v }
    count = cart.select { |v| v[:item] == result[:item] }
    result[:count] = count.length
    
    receipt << result
  end
  
  binding.pry
  
  receipt.uniq
end


  