
def sort_array_asc(array)
    array.sort
end

def sort_array_desc(array)
    array.sort do |a, b|  
        b <=> a
    end
end

def sort_array_char_count(array)
    array.sort do |a, b|
        a.length <=> b.length
    end
end

def swap_elements(array)
    array[1] , array[2] = array[2], array[1]
    return array
end

def swap_elements_from_to(array, index, destination_index)
    array[index], array[destination_index] = array[destination_index], array[index]
    return array
end

def reverse_array(array)
    new_array = array.reverse
     new_array
end

def kesha_maker(array)
    kesha = []
    array.each do |word|
        new_word = word.split ""
        new_word[2] = "$"
        kesha << new_word.join
    end
    kesha
end

def find_a(array)
    array.select  {|string| string.start_with?"a"}
end

def sum_array(array)
    array.inject {|sum, num| sum + num}
end

def add_s(array)
    array.each_with_index.collect do |string, index|
        if index == 1
            string
        else
            string << "s"
        end
    end
end
