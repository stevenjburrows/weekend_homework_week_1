

def pet_shop_name(pet_shop)
  return pet_shop[:name]

end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]

end

def add_or_remove_cash(pet_shop, amount)
  pet_shop[:admin][:total_cash] += amount

end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]

end

def increase_pets_sold(pet_shop, amount)
  pet_shop[:admin][:pets_sold] += amount

end

def stock_count(pet_shop)
  return pet_shop[:pets].length
end

def pets_by_breed(pet_shop, breed_type)
# matching_breeds = []
#   for pets in @pet_shop[:pets]
#     if pets[:breed] == breed_type
#       matching_breeds.push(pets[:name])
#
#     end
#   end
    matching_breeds = pet_shop[:pets].select { |pet| pet[:breed] == breed_type }
  return matching_breeds
end

def find_pet_by_name(pet_shop, pet_name)

  # for pets in @pet_shop[:pets]
  #   if pets[:name] == name
  #     matching_name = pets
  #
  #   end
  # end
  matching_pet = pet_shop[:pets].find { |pet| pet[:name] == pet_name }
  return matching_pet
end

 def remove_pet_by_name(pet_shop, pet_name)
   pet_shop[:pets].delete_if { |pet| pet[:name] == pet_name}
 end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end

def customer_cash(customer)
  return customer[:cash]

end

def remove_customer_cash(customer, cash)
  return customer[:cash] -= cash

end

def customer_pet_count(customer)
  return customer[:pets].length

end

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)


end
###########################

def customer_can_afford_pet(customer, new_pet)

  return customer[:cash] >= new_pet[:price]

end
