require 'simple_xlsx_reader'
require 'pry'
file_path = "/Users/lap00758/Desktop/tiki_score.xlsx"
sheets = SimpleXlsxReader.open(file_path).sheets
all = []
sheets.each do |sheet|
  data = sheet[1]
  data.each do |row|
    all.append([row[0], row[7].to_i])
  end
end
result = all.select {|pair| pair[0].is_a? String}
             .sort {|a, b| a[0] <=> b[0]}
             .chunk {|pair| pair[0]}
             .map do |name, scores|
  puts scores if name == 'cuong.le2@tiki.vn'
  total = scores.reduce(0) {|sum, n| sum + n[1]}
  puts total if name == 'cuong.le2@tiki.vn'
  [name,total]
end
             .sort {|a, b| a[1] <=> b[1]}
.reverse.slice(0, 11).map { |a| "#{a[0]} : #{a[1]}"  }



binding.pry
puts "Highest"