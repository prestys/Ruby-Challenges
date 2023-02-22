# These exercises (mostly) require you to define methods
# Most methods will take an array or hash as an argument
# Some methods will take other args
# Some methods won't take any args

# You won't find everything that you need in our materials
# Use the Ruby Docs and Google liberally if you get stuck

# Over to you!

## Arrays

# first_element
# takes one array as an arg
# returns the first element

def first_element(array)
  array[0]
end

# second_element
# takes one array as an arg
# returns the second element

def second_element(array)
  array[1]
end

# last_element
# takes one array as an arg
# returns the last element

def last_element(array)
  array.last()
end

# first_two_elements
# takes one array as an arg
# returns the first two elements

def first_two_elements(array)
  array[..1]
end

# first_three_elements
# takes one array as an arg
# returns the first three elements

def first_three_elements(array)
  array[..2]
end

# total
# takes one array of numbers as an arg
# adds all the numbers together
# returns the total

def total(array)
  array.sum()
end

# lowest_number
# takes one array of numbers as an arg
# returns the lowest value

def lowest_number
  array.min()
end

# highest_number
# takes one array of numbers as an arg
# returns the highest value

def highest_number
  array.max()
end

# the_beatles
# takes no args
# returns ['john', 'paul', 'george', 'ringo']

the_beatles = ['john', 'paul', 'george', 'ringo']

# i_joined_the_beatles
# takes one string as an arg
# when that string is 'freda' (for example)
# returns ['john', 'paul', 'george', 'ringo', 'freda']

def i_joined_the_beatles(string)
  the_beatles = ['john', 'paul', 'george', 'ringo']
  the_beatles << string
end

# we_joined_the_beatles
# takes one array as an arg
# when the array is ['sam', 'alex'] (for example)
# returns ['john', 'paul', 'george', 'ringo', 'sam', 'alex']

def we_joined_the_beatles(*array)
  the_beatles = ['john', 'paul', 'george', 'ringo']
  the_beatles + array
end

# remove_nils_from_array
# takes one array as an arg
# returns the array, minus any nils

def remove_nils_from_array(array)
  array.compact
end

# double_array
# takes one array as an arg
# when that array is [1,2,3]
# returns [1,2,3,1,2,3]

def double_array(array)
  array * 2
end

# unique_elements
# takes one array as an arg
# when that array is [1,1,2,2,3,3]
# returns [1,2,3]

def unique_elements(array)
  array.uniq
end

# add_to_array
# takes one array and one string as args
# adds the string to the array
# returns the new array

def add_to_array(*array, string)
  array << string
  return array
end

## Hashes

### The first two exercises focus on reading values from hashes

# get_band_member
# takes one string as an arg
# that string corresponds to a hash key
# returns the value of that key
# the hash is defined for you (see below)
# if the arg is 'vocalist'
# returns 'miss piggy'

def get_band_member(key)
  band_members = {'vocalist' => 'miss piggy', 'lead_guitar' => 'scooter'}
  # your code goes here
end

# query product
# takes one string as an arg
# that string corresponds to a hash key
# returns the value of that key
# the hash is defined for you (see below)
# if the arg is 'price'
# returns 2.99

def query_product(key)
  product = {'price' => 2.99, 'name' => 'chocolate', 'ingredients' => ['cocoa', 'nuts', 'mylk']}
  # your code goes here
end

### Focus: Adding key value pairs to hashes

# new_drummer
# takes one string as an arg
# adds a new key/value pair to the hash
# the key is 'drummer' and the value is the string
# returns the new hash
# the existing band members are: {'vocalist' => 'miss piggy', 'lead_guitar' => 'scooter'}
# if the arg is 'kermit'
# returns {'vocalist' => 'miss piggy', 'lead_guitar' => 'scooter', 'drummer' => 'kermit'}

def new_drummer(string)
  bandMembers = {
    "vocalist" => "miss piggy",
    "lead_guitar" => "scooter"
  }
  bandMembers["drummer"] = string
  return bandMembers
end

# touch_in
# takes two args
# arg one: the name of a tube station e.g. 'Aldgate East'
# arg two: a date and time e.g. '2022/01/30 17:12'
# returns a hash with key-value pairs for 'entrypoint' and 'time'

def touch_in(tube_station, date_time)
  entryTime = {
    "entrypoint" => tube_station,
    "time" => date_time
  }
  return entryTime
end

### Focus: Changing the value of an existing key-value pair in a hash

# new_vocalist
# takes one string as an arg
# replaces the value of the 'vocalist' key with the string
# returns the new hash
# the existing band members are: {'vocalist' => 'miss piggy', 'lead_guitar' => 'scooter'}
# if the arg is 'waldo'
# returns {'vocalist' => 'waldo', 'lead_guitar' => 'scooter'}

def new_vocalist(string)
  bandMembers = {
    "vocalist" => "miss piggy",
    "lead_guitar" => "scooter"
  }

  bandMembers["vocalist"] = string
  return bandMembers
end

### Focus: Using the Ruby docs to find the right method/s

# all_values
# takes one hash as an arg
# returns the values

def all_values(**values)
  values
end

# all_keys
# takes one hash as an arg
# returns the keys

def all_keys(**keys)
  keys
end

# remove_nils_from_hash
# takes one hash an an arg
# removes key-value pairs where the value is nil
# returns the remaining key-value pairs as a hash

def remove_nils_from_hash(**nils)
  nils.compact
end

# key_value_swap
# takes one hash as an arg
# swaps the keys with the values
# returns the new hash

def key_value_swap(**values)
  keys.replace(values)
  keys
end
