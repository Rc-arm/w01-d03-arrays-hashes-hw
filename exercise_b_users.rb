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

# p users["Avril"][:pets]
# p users["Avril"][:pets][:species] returned a Type Error for 'no implicit conversion of Symbol into Integer' - it tries converting [:species] into an integer because it sees an array
p users["Avril"][:pets][0][:species]

# 5. Get the smallest of Erik's lottery numbers

# My solution
erik_lottery = users["Erik"][:lottery_numbers]
p erik_lottery.min()

# Solutions from morning review
p users["Erik"][:lottery_numbers].min
p users["Erik"][:lottery_numbers].sort.first
p users["Erik"][:lottery_numbers].sort[0]

# 6. Return an array of Avril's lottery numbers that are even

# My solution
avril_lottery_numbers = users["Avril"][:lottery_numbers]
avril_lottery_number = 0

while avril_lottery_number < avril_lottery_numbers.length
  if avril_lottery_numbers[avril_lottery_number] % 2 == 0
    puts avril_lottery_numbers[avril_lottery_number]
  end
  avril_lottery_number += 1
end

# Solutions from morning review
avril_lottery_numbers = users["Avril"][:lottery_numbers]
avril_even_numbers = []
for avril_lottery_number in avril_lottery_numbers
  if avril_lottery_number % 2 == 0
    p avril_even_numbers.push(avril_lottery_number)
  end
end

# 7. Erik is one lottery number short! Add the number `7` to be included in his lottery numbers

# My solution
users["Erik"][:lottery_numbers] << 7
p users["Erik"][:lottery_numbers]

# Other solution from morning review
p users["Erik"][:lottery_numbers].push(7)

# 8. Change Erik's hometown to Edinburgh

users["Erik"][:home_town] = "Edinburgh"
p users["Erik"][:home_town]

# 9. Add a pet dog to Erik called "Fluffy"

# My solution
users["Erik"][:pets] << {name: "Fluffy", species: "dog"}
p users["Erik"][:pets]

# 10. Add another person to the users hash

# My solution
# users << {"Sam" [twitter: "samt", lottery_numbers: [2, 7, 14, 27, 34, 44], home_town: "Rochdale", pets: {name: "Cattus", species: "cat"}]}
# Got lost here

# Solution from morning review
new_user = {
  "Sam" => {
    :twitter => "samt",
    :lottery_numbers => [2, 7, 14, 27, 34, 44],
    :home_town => "Rochdale",
    :pets => [
      {
        :name => "Cattus",
        :species => "cat"
      }
    ]
  }
}

users.merge!(new_user)

p users
