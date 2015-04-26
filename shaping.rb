open('test.txt', 'r') do |input|
  while line = input.gets
    print "#{line.chomp.sub(/\t$/, '')}\n"
  end
end
