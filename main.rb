def caesar_cipher(str,index_factor)

  alphabet =['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']

  result = []
  str_arr = str.downcase.split('') #["h", "e", "l", "l", "o"]

  # loop through every letter of str_arr
  # compare the letter from str_arr and check if its inside alphabet
  # if it is find its index in alphabet
  # move its index x amount of times to the right
  # push that element into result array

  str_arr.each do |elem|
   if alphabet.include?(elem)
     idx =  alphabet.find_index(elem)
     new_index = idx+index_factor
     if new_index > 25
      new_index = new_index % 26
     end
     result.push(alphabet[new_index])
   else
    result.push(elem)
   end
  end



  str.each_char.with_index do |item,index|
    if item == item.upcase 
      result[index] = result[index].upcase
    end
  end
 
  result.join('')

end




p caesar_cipher("hat a stTERidg!",5)