def print_divider
  puts "*" * 40
  puts "\n"
end

def print_progress_bar
  3.times { sleep 0.5; print "." }
  puts "\n"
end

NUM_GARLICCLOVES = 2
NUM_EGGS = 3

ingredients = [
  {name: "garlic cloves", quantity: NUM_GARLICCLOVES},
  {name: "eggs", quantity: NUM_EGGS},
  {name: "bacon", quantity: "250 grams"},
  {name: "spaghetti", quantity: "200 grams"},
  {name: "Parmesan", quantity: "Some"},
]

puts "*  Let's cook a nice Spaghetti Carbonara!  *"
print_divider

puts "You need the following ingredients:"

ingredients.each do |ingredient|
  puts "*  #{ingredient[:quantity]} #{ingredient[:name]} "
end
