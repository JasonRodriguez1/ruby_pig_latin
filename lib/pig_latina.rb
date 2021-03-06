def pig_latina(word)
# univeral variables
vowels = ['a','e','i','o','u']
user_output = ""
# adds 'way' if the word starts with a vowel
  if vowels.include?(word[0]) 
     user_output = word + 'way'     
# moves the first consonants at the beginning of a word before a vowel to the end  
  else 
    word.split("").each_with_index do |letter, index|
      if vowels.include?(letter)
        user_output = word[index..-1] + word[0..index-1] + 'ay'
      break
      end
    end 
  end   
# takes words that start with 'qu' and moves it to the back of the bus and adds 'ay'
  if word[0,2] == 'qu'
  user_output = word[2..-1] + 'quay'
  end
# takes words that contain 'qu' and moves it to the back of the bus and adds 'ay'
  if word[1,2] == 'qu'
  user_output = word[3..-1] + word[0] + 'quay'
  end
# prints result for input that contains no spaces (a.k.a. a single word)
  user_output
end
# prints result for input that contains spaces (a.k.a. multiple words) 
def pig(words)
  words.split(" ").map { |word| pig_latina(word) }.join(" ")
end
# woot woot! on to the next..