require 'pry'
def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort {|x,y| y<=>x}
end

def sort_array_char_count(array)
  array.sort_by {|word| word.length}
end

def swap_elements(array)
  x = array[1]
  y = array[2]
  array[1] = y 
  array[2] = x
  array
end

def swap_elements_from_to(array, index, destination_index)
  x = array[index]
  y = array[destination_index]
  array[index] = y 
  array[destination_index] = x
  array
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  new_array = []
  array.each do |word|
    new_string = ""
    i = 0 
   while i < word.length 
    if i != 2 
      new_string << word[i]
    else
      new_string << "$"
    end
    i += 1
  end
    new_array.push(new_string)
  end
  new_array
end

def find_a(array)
  new_array = []
  array.each do |word|
    if word.start_with?("a")
      new_array.push(word)
    end
  end
  new_array
end

def sum_array(array)
  my_sum = array.inject {|sum, n| sum + n}
  my_sum
end

def add_s(array)
  array.each_with_index.collect {|element, index| element + "s" if index ! = 1}
end