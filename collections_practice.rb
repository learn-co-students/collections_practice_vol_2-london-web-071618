require 'pry'


def begins_with_r(array)
  new_array = []
  array.each do |word|
   new_array << word.start_with?('r')
 end 
 if new_array.include?(false)
   return false
 else 
   return true 
 end 
end 

def contain_a(array)
  contain_a = []
  array.each do |word|
    if word.include?("a")
      contain_a << word 
    end 
  end 
  contain_a
end 

def first_wa(array)
  wa_array = []
  new_array = []
  
  array.each  {|element| new_array << element.to_s}

  new_array.each do |word|
    if word.start_with?('wa')
      wa_array << word 
    end
  end
  wa_array.first 
end 

def remove_non_strings(array)
  string_array = []
  array.each do |element| 
    if element == element.to_s 
      string_array << element
    end
  end
  string_array
end 


def count_elements(array)
a = array 
a.group_by(&:itself) 
.map{|k, v| k.merge(count: v.length)}
 end 


def merge_data(keys, data)
  data[0].values.map.with_index {|v, i| keys[i].merge(v)}
end 


def find_cool(array)
  cool_array=[]
  array.each do |person|
    person.each do |details|
    if details.include?("cool")
      cool_array << person
    end 
  end 
  end 
  cool_array
end 


def organize_schools(schools)
school_hash={}
schools.each do |school, location|
  location.each do |key, city|
  school_hash[city] ||= []
  school_hash[city] << school
 end 
end 
school_hash
end