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
  {description: "Peel and chop the garlic", action:"peel_garlic"},
  {description: "Grate the Parmesan", action:"generic_recipe_step"},
  {description: "Break the eggs", action:"break_eggs"},
  {description: "Mix eggs with Parmesan", action:"generic_recipe_step"},
  {description: "Cook the spaghetti", action:"generic_recipe_step"},
  {description: "Bake the garlic and bacon", action:"generic_recipe_step"},
  {description: "Add cooked spaghetti to garlic and bacon", action:"generic_recipe_step"},
  {description: "Add egg mixture to spaghetti and mix", action:"generic_recipe_step"},
  {description: "Turn off heat, cover and wait for 5 minutes", action:"generic_recipe_step"},
  {description: "Finish with black pepper and enjoy", action:"generic_recipe_step"},
]

print_divider
puts "See below for the different steps to follow:"

steps.each_with_index do |step, index| #in step both description as action are stored
  puts (index + 1).to_s + ") " + step[:description]
end

def generic_recipe_step
  puts "On it!"
  print_progress_bar
end

def peel_garlic
  counter = 0
  while counter < NUM_GARLICCLOVES
    counter += 1
    print "Peel and chop the garlic #{counter}"
    print_progress_bar
  end
end

def break_eggs
  counter = 0
  while counter < NUM_EGGS
    counter += 1
    print "Breaking egg #{counter}"
    print_progress_bar
  end
end

def ask_if_ready(step, index)
  puts "Are you ready for step #{index+1}?\n(#{step[:description]}"
  answer = gets.chomp
  answer.upcase == "Y"
end
