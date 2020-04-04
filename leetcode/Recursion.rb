
class Person

  def initialize(name, age)
    @name = name
    @age = age
  end

  def name
    @name
  end

  def age
    @age
  end

end



def print_person(people, index)
  puts "#{index}: Person name: #{people.name}, age: #{people.age}"
end
def print_three_people(people1, people2, people3)
  print_people(people1, 0)
  print_people(people2, 1)
  print_people(people3, 2)
end
print_three_people(peoples[0], peoples[1], peoples[2])


@count = 0


def print_people(people, index = 0)
  return unless people && !people.empty?
  return if index == people.length
  puts "#{index}: Person name: #{people[index].name}, age: #{people[index].age}"
  print_person(people, index+1)
end
people = [ Person.new("1", 1) ,  Person.new("2", 2) ,  Person.new("3", 3) ]
print_people(people)

people_last = [ Person.new("1", 1) ,  Person.new("2", 1) ,  Person.new("3", 3), Person.new("3", 3), Person.new("3", 4), Person.new("3", 4) , Person.new("3", 5)]

people_middle = [ Person.new("1", 1) ,  Person.new("2", 1) ,  Person.new("3", 3), Person.new("3", 3), Person.new("3", 4), Person.new("3", 5) , Person.new("3", 5)]

people_first = [ Person.new("1", 1), Person.new("1", 0) ,  Person.new("2", 1) ,  Person.new("3", 3), Person.new("3", 3), Person.new("3", 4), Person.new("3", 4)]
people_first2 = [ Person.new("1", 1), Person.new("2", 1) ,  Person.new("3", 3), Person.new("3", 3), Person.new("1", 0), Person.new("1", 0) ,  Person.new("3", 4),Person.new("3", 3), Person.new("3", 4)]

def find_not_twins(people, index = 0, xor_current = 0)
  return xor_current if index == people.length
  find_not_twins(people, index + 1, xor_current ^ people[index].age)
end


people.reduce(0){|r,p|r^p.age}

def find_not_twins(people, index = 0)
  people.sort_by!(&:age) if index == 0
  return people[index].age if people[index].age != people[index + 1]&.age
  find_not_twins(people, index + 2)
end


find_not_twins people_first
find_not_twins people_first2
find_not_twins people_last
find_not_twins people_middle


people.sort_by(&:age).each_slice(2).to_a.select{|p| p.size == 1 || p[0].age != p[1].age}


def find_not_twins_2(people)
  odd_exist = Hash.new
  people.each{|person| odd_exist[person.age] = !odd_exist[person.age]}
  odd_exist.select{|k, v| v}.first[0]
end



def find_single(nums)
  odd_exist = Hash.new
  nums.each{|num| odd_exist[num] = !odd_exist[num]}
  odd_exist.select{|k, v| v}.first[0]
end


