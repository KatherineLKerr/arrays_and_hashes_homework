users = {
  "Jonathan" => {
    :twitter => "jonnyt",
    :lottery_numbers => [6, 12, 49, 33, 45, 20],
    :home_town => "Stirling",
    :pets => [
    {
      :name => "fluffy",
      :species => "cat"
    },
    {
      :name => "fido",
      :species => "dog"
    },
    {
      :name => "spike",
      :species => "dog"
    }
  ]
  },
  "Erik" => {
    :twitter => "eriksf",
    :lottery_numbers => [18, 34, 8, 11, 24],
    :home_town => "Linlithgow",
    :pets => [
    {
      :name => "nemo",
      :species => "fish"
    },
    {
      :name => "kevin",
      :species => "fish"
    },
    {
      :name => "spike",
      :species => "dog"
    },
    {
      :name => "rupert",
      :species => "parrot"
    }
  ]
  },
  "Avril" => {
    :twitter => "bridgpally",
    :lottery_numbers => [12, 14, 33, 38, 9, 25],
    :home_town => "Dunbar",
    :pets => [
      {
        :name => "monty",
        :species => "snake"
      }
    ]
  }
}

# 1. Get Jonathan's Twitter handle (i.e. the string `"jonnyt"`)
p users["Jonathan"][:twitter]

# 2. Get Erik's hometown
p users["Erik"][:home_town]

# 3. Get the array of Erik's lottery numbers
p users["Erik"][:lottery_numbers]

# 4. Get the type of Avril's pet Monty
p users["Avril"][:pets][0][:species]

# 5. Get the smallest of Erik's lottery numbers
erik_lottery_sorted = users["Erik"][:lottery_numbers].sort
p erik_lottery_sorted[0]

# 6. Return an array of Avril's lottery numbers that are even
get_even_lottery_avril = users["Avril"][:lottery_numbers]

even_lottery_nums = []

for num in get_even_lottery_avril
  if (num % 2) == 0
    even_lottery_nums.push(num)
  end
end

return even_lottery_nums

# 7. Erik is one lottery number short! Add the number `7` to be included in his lottery numbers
erik_lottery = users["Erik"][:lottery_numbers]
erik_lottery << 7
p erik_lottery

# 8. Change Erik's hometown to Edinburgh
eriks_hometown = users["Erik"][:home_town]
eriks_hometown = "Edinburgh"
p eriks_hometown

# 9. Add a pet dog to Erik called "Fluffy"
eriks_pets = users["Erik"][:pets]
fluffy = {:name => "Fluffy", :species => "dog"}
eriks_pets.push(fluffy)

# 10. Add another person to the users hash
pet_1 = {:name => "Bella", :species => "dog"}
pet_2 = {:name => "Garfield", :species => "cat"}
pets_array = []
pets_array.push(pet_1)
pets_array.push(pet_2)

new_person = {
  :twitter => "idontknow",
  :lottery_numbers => [12, 3, 15, 25, 30],
  :home_town => "Edinburgh",
  :pets => pets_array
  }

users["Katherine"] = new_person
