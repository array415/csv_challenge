# file = "sample/" + gets.chomp
class Test
  attr_accessor :first_name, :lastname
  def initialize(first_name, last_name, gender, date, color)
    hash = {:first_name => first_name, :last_name => last_name, :gender => gender, :date => date, :color => color}
    puts "#{hash[:first_name]} #{hash[:last_name]} #{hash[:gender]} #{proper_date(hash[:date])} #{hash[:color]} "
  end

  def proper_date(arr)
    arr.gsub(/-/, "/")
  end

end

File.open("sample/comma.txt").each do |line|
  #TODO: Remove commas from line
  #TODO: line.split by " " not comma
  line = line.gsub(/\,/, "")
  array = line.split(" ")
  Test.new(array[1], array[0], array[2], array[4], array[3])
end

File.open("sample/pipe.txt").each do |line|
   array = line.strip.split(" | ")
   Test.new(array[1], array[0], array[3], array[5], array[4])
end

# File.open("sample/space.txt").each do |line|
#   puts line
# end
