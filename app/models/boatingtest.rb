class BoatingTest
  attr_accessor :student, :test, :instructor, :name

  @@all = []
  def self.all
    @@all 
  end 

  def initialize(student, test, instructor, name)
    @student = student
    @test = test
    @instructor = instructor
    @name = name
    @@all << self
  end 

end
