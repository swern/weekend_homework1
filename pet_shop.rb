

def pet_shop_name(hash)
  return hash[:name]
end

def total_cash(hash)
  return hash[:admin][:total_cash]
end

def add_or_remove_cash(hash, amount)
  hash[:admin][:total_cash] = hash[:admin][:total_cash] + amount
end

def pets_sold(hash)
  return hash[:admin][:pets_sold]
end

def increase_pets_sold(hash, amount)
  hash[:admin][:pets_sold] = hash[:admin][:pets_sold] + amount
end

def stock_count(hash)
  hash[:pets].length
  end

  def pets_by_breed(hash, pet_name)
    array = []
    for pet in hash[:pets]
    array << pet if pet[:breed] == pet_name
  end
  return array
end

def find_pet_by_name(hash, pet_name2)
    for pet in hash[:pets]
      return pet if pet[:name] == pet_name2
end
    return nil
end

def remove_pet_by_name(hash, pet_name)
  for pet in hash[:pets]
hash[:pets].delete(pet) if pet[:name] == pet_name
end
end

def add_pet_to_stock(pet_shop, new_pet)
 return pet_shop[:pets] << new_pet
end

def customer_pet_count(customers)
  return customers[:pets].length
end

def add_pet_to_customer(customer, new_pet)
  return customer[:pets] << new_pet
end

def customer_can_afford_pet(customer, new_pet)
  if customer[:cash] >= new_pet[:price]
    return true
  else return false
end
end

# def sell_pet_to_customer(pet_shop, pet, customer) 
# return customer[:pets] << pet
# return customer[:cash] = customer[:cash] - pet[:price]
# return pet_shop[:admin][:total_cash] = pet_shop[:admin][:total_cash] + pet[:price]
# end

def sell_pet_to_customer(pet_shop, pet, customer)
 if pet != nil &&
   customer_can_afford_pet(customer, pet)
   add_pet_to_customer(customer, pet)
   add_or_remove_cash(pet_shop, pet[:price])
   increase_pets_sold(pet_shop, 1)

 else
   return false

end

end
#pet not found 
#insufficient funds
#







