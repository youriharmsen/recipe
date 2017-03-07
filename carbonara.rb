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

ingredients.each do |ingredient| #puts the first hash in the argument (first loop)#
  puts "*  #{ingredient[:quantity]} #{ingredient[:name]} "
end

loop do
  puts "\n"
  print_divider

  puts "Got all ingredients you need? (Y/N)"
  answer = gets.chomp.upcase

  if answer == "N"
    puts "You need to go shopping"
    print_progress_bar
  elsif answer == "Y"
    puts "Way to go, lets make the best Carbonara ever and impress your mother in law"
    break
  else
    puts "Do you speak English? What is not to understand in \n yes or no? Try again."
  end
end

steps = [
  {description: "Peel the garlic", action:"peel_garlic"},
  {description: "Grate the Parmesan", action:"grate_parmesan"},
  {description: "Break the eggs", action:"break_eggs"},
  {description: "Mix eggs with Parmesan", action:"mix_egg_parmesan"},
  {description: "Cook the spaghetti", action:"cook_spaghetti"},
  {description: "Bake the garlic and bacon", action:"bake"},
  {description: "Add cooked spaghetti to garlic and bacon", action:"add_spaghetti"},
  {description: "Add egg mixture to spaghetti and mix", action:"add_egg_mixture"},
  {description: "Turn of heat and wait for 5 minutes", action:"waiting"},
  {description: "Finish with black pepper and enjoy", action:"finish_enjoy"},
]
