def begins_with_r(array)
  array.each do |element|
    if element.start_with?("r") == false
      return false
    end
  end
  return true
end

def contain_a(array)
  new_array = []
  array.each do |element|
    if element.include?("a") == true
      new_array << element
    end
  end
  new_array
end

def first_wa(array)
  array.each do |element|
    if element.to_s.start_with?("wa") == true
      return element
    end
  end
end

def remove_non_strings(array)
  new_array = []
  array.each do |element|
    if element.class == String
      new_array << element
    end
  end
  new_array
end

def count_elements(array)
  counter = 0
  new_array = array.uniq
  
  new_array.each do |element|
    array.each do |multi_element|
      if multi_element == element
        counter += 1
      end
    end
    element[:count] = counter
    counter = 0
  end
  new_array
end

def merge_data(keys, data)
  new_array = []
  
  keys.each do |key_hash|
    key_hash.each do |key, name|
      data.each do |data_hash|
        data_hash.each do |name_key, info|
          if name == name_key
            new_array << key_hash.merge(info)
          end
        end
      end
    end
  end
  new_array
end
    
def find_cool(array)
  new_array = []
  
  array.each do |key_hash|
    if key_hash.values.include?("cool")
      new_array << key_hash
    end
  end
  new_array
end


schools = {
      "flatiron school bk" => {
        :location => "NYC"
      },
      "flatiron school" => {
        :location => "NYC"
      },
      "dev boot camp" => {
        :location => "SF"
      },
      "dev boot camp chicago" => {
        :location => "Chicago"
      },
      "general assembly" => {
        :location => "NYC"
      },
      "Hack Reactor" => {
        :location => "SF"
      }
    }

def organize_schools(schools)
  new_hash = {}
  temp_array = []
  
  schools.each do |school, location_hash|
    location_hash.each do |key, location|
      if !new_hash[location]
        temp_array << school
        new_hash[location] = temp_array
      else
        new_hash[location] << school
      end
      temp_array = []
    end
  end
  new_hash
end

