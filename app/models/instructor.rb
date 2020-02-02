class Instructor
  attr_accessor :name

  @@all = []
  def self.all
    @@all 
  end 

  def initialize(name)
    @name = name 
    @@all << self
  end 

  def pass_student(student, test_name)
    test_passed = BoatingTest.all.find {|test| test.student.first_name == first_name && test.name == test_name}
    if test_passed
      test_passed.status == "passed"
    else
      BoatingTest.new(student, test_name, "passed", self)
    end 
  end 

  def fail_student(student, test_name)
    test_fail = BoatingTest.all.find {|test| test.student.first_name == first_name && test.name = test_name}
    if test_fail
      test_fail.status == "failed"
    else
      BoatingTest.new(student, test_name, "failed", self)
    end 
  end 


end
