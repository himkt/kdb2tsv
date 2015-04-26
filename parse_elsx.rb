prequire 'roo'

abort("usage: ruby parse_elsx.rb <.xlsx>") if ARGV.size == 1

s = Roo::Excelx.new(ARGV[0])  # .xlsx を読み込むときは Roo::Excelx.new                                                  
s.each do |arr|
  p arr
  arr.each do |item|
    if item.instance_of? Date
      item = "#{item}\t"
    elsif item != nil
      item = "#{item.to_s.gsub(/\n/, '')}\t"
    else
      item = "#{item}\t"
    end
    print item
  end
  print "\n"
end
