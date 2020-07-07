puts "Type or paste a body of text to get an count of how many times each word appears: "

# break up user text into each word
text = gets.chomp
words = text.split(" ")

# create empty hash with default value of 0
frequencies = Hash.new(0)

# set word as key with value of +1
# if the word appears again, the value is +1
words.each do |word|
  frequencies[word] += 1
end

# sort frequencies hash by count (lowest => highest is default)
frequencies = frequencies.sort_by do |word, count|
  count
end
frequencies.reverse!

# loop over hash and print key/value pairs
# convert count value to string
frequencies.each do |word, count|
  puts word + " " + count.to_s
end