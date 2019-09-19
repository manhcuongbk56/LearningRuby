ids = [ 1, 2, 3 ]
File.open("input.csv", 'w') do
  |file|
  (1..50000).each do |i|
    ids.shuffle!
    file.write("Test#{i}, #{i}, #{ids[0]}, #{ids[1]}, #{ids[2]}\n")
  end
end