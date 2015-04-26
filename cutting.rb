# -*- coding: utf-8 -*-

data = Array.new
attrs = Array.new

File.foreach('shaped_subjects.tsv') do |line|
  next if $. < 5
  (attrs = line.split(/\t/); next) if $. == 5
  record = Hash.new
  subject = line.split(/\t/)
  attrs.each_with_index do |item, index|
    next if index == 2 || index == 14
    record[item] = subject[index]
  end
  data.push(record)
end

attrs.each_with_index do |attr, index|
  next if index == 2 || index == 14
  print attr
  print "\t" if index != 13
  print "\n" if index == 13
end


data.each do |hash|
  hash.each_with_index do |(attr, value), index|
    print value
    print "\t" if index != 12
    print "\n" if index == 12
  end
end
