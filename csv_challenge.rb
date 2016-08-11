# file = "sample/" + gets.chomp
class Test
  def initialize(first_name, last_name, gender, date, color)
    puts "#{first_name} #{last_name} #{proper_gender(gender)} #{proper_date(date)} #{color}"
  end

  def proper_date(date)
    date.gsub(/-/, "/")
  end

  def proper_gender(gender)
    return "Male" if gender == "M"
    return "Female" if gender == "F"
    gender
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

File.open("sample/space.txt").each do |line|
  array = line.strip.split
  Test.new(array[1], array[0], array[3], array[4], array[5])
end
