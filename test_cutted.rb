# -*- coding: utf-8 -*-

File.foreach('cutted_subjects.tsv') do |line|
  num = line.split(/\t/).size
  abort('invalid') if num != 13
end
