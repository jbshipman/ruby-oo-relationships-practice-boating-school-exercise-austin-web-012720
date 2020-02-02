class Student
  attr_accessor :first_name, :last_name 

  @@all = []
  def self.all
    @@all
  end 

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end 

  def add_boating_test(test, status, instructor)
    BoatingTest.new(self, test, status, instructor)
  end 

  def self.find_student(first_name)
    self.all.select {|s| s.first_name == self}
  end 

  def grade_percentage
    # % tests passing by current student
    student_test = BoatingTest.all.find_all {|test| test.student.first_name == self.first_name}
    total_tests = student_test.length.to_f
    total_passed = student_test.find_all {|test| test.status == "passed"}
    num_passed = total_passed.to_f 
    percent_passed = (total_tests/num_passed) * 100
  end 

end
