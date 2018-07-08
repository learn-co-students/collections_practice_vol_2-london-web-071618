def begins_with_r(array)
  array.all? do |element|
    element[0] == 'r'
  end
end

def contain_a (array)
  array.select do |element|
    element.include?("a")
  end
end

def first_wa(array)
  array.find do |element|
    element.to_s.start_with?("wa")
  end
end

def remove_non_strings(array)
    array.reject do |element|
      element.class != String 
    end
end

def count_elements(array)
  new_array = []
  array.each { |item| new_array << item unless new_array.include?(item)}
  new_array.each do |item| 
    arr = array.select{|thing| item == thing}
    item[:count] = arr.length
  end
  return new_array
end
  
def merge_data(keys, data)
  keys.map do |key|
    key.merge(data[0][key[:first_name]].to_h)
  end
end
    

def find_cool(array)
  array.select do |item| 
    item[:temperature] == "cool"
  end
end


def organize_schools(array)
  by_location = {}
    schools.each do |school, location_hash|
      location_hash.each do |symbol, location|
        if by_location[location] == nil
          by_location[location] = [school]
        else
          by_location[location] << school
        end
      end
    end
    by_location
end



  

  