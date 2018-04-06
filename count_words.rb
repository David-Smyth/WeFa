file_path = ARGV[0] || 'count_words.txt'
puts "Indexing #{file_path} ..."
words_count = {}

File.open(file_path, 'r').each do |line|
  line.split.each do |word|
    sym = word.downcase.gsub(/[[:punct:]]/, '').to_sym
    if words_count.has_key? sym then
      words_count[sym] += 1
    else
      words_count[sym] = 1
    end
  end
end

words_count.each do |sym, count|
  puts "#{sym.to_s} occurs #{count} times"
end
