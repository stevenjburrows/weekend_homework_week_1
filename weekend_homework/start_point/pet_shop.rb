

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
matching_breeds = []
  for pets in @pet_shop[:pets]
    if pets[:breed] == breed_type
      matching_breeds.push(pets[:name])

    end
  end
  return matching_breeds
end

def find_pet_by_name(pet_shop, name)

  for pets in @pet_shop[:pets]
    if pets[:name] == name
      matching_name = pets

    end
  end
  return matching_name
end
