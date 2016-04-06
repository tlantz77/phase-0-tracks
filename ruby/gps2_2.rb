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
    #if list_hash.has_key?(i)
    if list_hash[i]
      list_hash[i] += 1
    else
      #list_hash.store(i, 1)
      list_hash[i] = 1
    end
  end
  p list_hash
  list_hash
end

create_list("apple banana cherry banana banana")  





# Method to add an item to a list
# input: item name and optional quantity
# steps: add name to hash keys and add quantity to  # hash value if there is one 
# output: the upaated hash

# Method to remove an item from the list
# input:
# steps:
# output:

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output: