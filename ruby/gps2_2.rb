# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # split string into an array
  # iterate through the array an assign each item to   # a hash key.
  # set default quantity
  # print the list to the console [can you use one of your other methods hre?]
# output: a hash of grocery items 

def create_list(items)
  list_array = items.split(" ")
  list_hash = {}
  list_array.each do |i| 
    if list_hash[i]
      list_hash[i] += 1
    else
      list_hash[i] = 1
    end
  end
  p list_hash
  list_hash
end




# Method to add an item to a list
# input: item name and optional quantity
# steps: add name to hash keys and add quantity to  # hash value if there is one 
# output: the updated hash

def add_item(item, quantity, list)
  list[item] = quantity
  p list
  list
end 




# Method to remove an item from the list
# input:
# steps:
# output:

def remove_item(item, list)
  list.delete(item)
  p list
  list
end 




# Method to update the quantity of an item
# input:
# steps:
# output:

def update_quantity(item, new_quantity, list)
  list[item] = new_quantity
  p list
  list
end 




# Method to print a list and make it look pretty
# input:
# steps:
# output:

def print_list(list)
  puts "Your current grocery list"
  puts "---------------------------"
  list.each do |item, quantity|
    puts "#{item}: #{quantity}"
  end 
end

grocery_list = create_list("butter milk soda soda chips")
add_item("Lemonade", 2, grocery_list)
add_item("Tomatoes", 3, grocery_list)
add_item("Onions", 1, grocery_list)
add_item("Ice Cream", 4, grocery_list)

remove_item("Lemonade", grocery_list)

update_quantity("Ice Cream", 1, grocery_list)

print_list(grocery_list)
