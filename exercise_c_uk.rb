united_kingdom = [
  {
    name: "Scotland",
    population: 5295000,
    capital: "Edinburgh"
  },
  {
    name: "Wales",
    population: 3063000,
    capital: "Swansea"
  },
  {
    name: "England",
    population: 53010000,
    capital: "London"
  }
]

# 1. Change the capital of Wales from `"Swansea"` to `"Cardiff"`.

# My solution
united_kingdom[2][:capital] = "Cardiff"
p united_kingdom[2][:capital]

# Solution from morning review
united_kingdom[1][:capital] = "Cardiff"
p united_kingdom[1][:capital]

# 2. Create a Hash for Northern Ireland and add it to the `united_kingdom` array (The capital is Belfast, and the population is 1,811,000).

# My solution
united_kingdom << {name: "Northern Ireland", population: 1811000, capital: "Belfast"}

# Solution from morning review
united_kingdom.push({
  name: "Northern Ireland",
  population: 1811000,
  capital: "Belfast"
  })

# 3. Use a loop to print the names of all the countries in the UK.

# My solution
# country_names = united_kingdom[:name]
# country_name = 0
#
# while country_name < country_names.length
#   puts country_name
#   country_name += 1
# end

# Solution 1 from morning review
def collect(arr, to_collect)
  output = Array.new

  for element in arr
    output.push(element[to_collect])
  end

  return output.join(', ')
end

puts collect(united_kingdom, :name)
puts collect(united_kingdom, :population)

# Solution 2 from morning review
for country in united_kingdom
  p country[:name]
end

# 4. Use a loop to find the total population of the UK.

# My solution
# def get_uk_pop(country_pops)
#   uk_pop = 0
#   for country_pop in country_pops
#     uk_pop += country_pops[:population]
# end
#
# p uk_pop

total_population = 0

for country in united_kingdom
  total_population += country[:population]
end

puts total_population
