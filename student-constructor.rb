# Part 3
class Student
  attr_accessor :first_name, :last_name, :grades, :average
  def initialize(informative)
    @first_name = informative[:first_name]
    @last_name = informative[:last_name]
    @grades = informative[:grades]
    total = @grades.inject(0) {|sum, num| sum += num}
    @average = total / @grades.size.to_f
  end

  def to_s
    "Name: #{@first_name} #{@last_name}\nGrades: #{@grades}\nAverage: #{@average}"
  end
end

puts Student.new({first_name: 'John', last_name: 'Smith', grades: [90, 100, 85]}).to_s
#
# # Part 2
# class Student
#   attr_accessor :first_name, :last_name, :grades
#   def initialize(students_information)
#     @first_name = students_information[:first_name]
#     @last_name = students_information[:last_name]
#     @grades = students_information[:grades]
#   end
# end
#
# # Part 1
# class Student
#   attr_accessor :first_name, :last_name, :grades
#   def initialize(first_name, last_name, grades)
#     @first_name = first_name
#     @last_name = last_name
#     @grades = grades
#   end
# end
