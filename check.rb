open('testtest.tsv', 'r') do |input|
  while line = input.gets
    p line.split(/\t/).size
  end
end
