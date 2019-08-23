def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort { |a,b| b <=> a }
end

def sort_array_char_count(array)
  array.sort { |a,b| a.length <=> b.length }
end

def swap_elements(array)
  array.sort { |a,b| a[1] <=> b[2] }
end

# def swap_elements_from_to(array, index, destination_index)
#   array.sort { |index,destination_index| index[2] <=> destination_index[1] }
# end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  array.each { |char| char[2] = "$" }
  array
end

def find_a(array)
  array.select { |i| i.start_with?("a") }
end

# Methods for sum_array below
# def sum_array(num) # Benchmark 0.00857
#   sum = 0
#   num.each { |i| sum += i }
#   sum
# end
#
# def sum_array(num) # Benchmark 0.00806
#   num.sum
# end

def sum_array(array) #Benchmark 0.00064
  array.inject(:+)
end

def add_s(array)
  # array.each_with_index.collect { |element, index| element.insert(-1,"s") if index != 1 }
  # returns false for index[1] instead of element
  array.each_with_index.collect do |element, index|
    if index != 1
      # "#{word}s"
      element.insert(-1,"s")
    else
      element
    end
  end
end
