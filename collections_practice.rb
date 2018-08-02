# your code goes here
def begins_with_r (collection)
  collection.all?{|element| element.chars[0] == 'r'}
end

def contain_a (collection)
  collection.select{|element| element.include?('a')}
end

def first_wa (collection)
  collection.find{|element| element[0..1] == 'wa'}
end

def remove_non_strings (collection)
  collection.select{|element| element.class == String}
end

def count_elements (collection)
  # hash = collection.uniq
  # hash.each{|element| element[:count] = collection.count(element)}
  # hash
  collection.uniq.each{|element| element[:count] = collection.count(element)}
end

<<<<<<< HEAD
def merge_data (keys, values)
  hashArr = []
  keys.each{|id_name|
  name = id_name[:first_name]
    values.each{|info|
      if(info[name])
        merge_info = info[name]
        merge_info[:first_name] = name
        hashArr << merge_info
      end
    }
  }
  hashArr
end

def find_cool (collection)
  arr = []
  collection.each{|name|
    cool = name[:temperature]
    if (cool == "cool")
      arr << name
    end
  }
  arr
end

def organize_schools (collection)
  organized_schools = {}
  collection.each do |school, location|
    local = location[:location]
    if organized_schools[local]
      organized_schools[local] << school
    else
      organized_schools[local] = []
      organized_schools[local] << school
    end
  end
  organized_schools
=======
def merge_data (col1, col2)
  col2.map{|element|
    element.flatten[1..element.length-1]
  }
end

def find_cool (collection)
end

def organize_schools (collection)
>>>>>>> 982d1d139818aac2f4091aa3c3b10b07ad8d8a01
end