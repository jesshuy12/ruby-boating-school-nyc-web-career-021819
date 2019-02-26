class BoatingTest

  attr_accessor :student, :test_name, :status, :instructor, :first_name, :name

  @@all = []

  def initialize(student, test_name, status, instructor)
    @student = student
    @test_name = test_name
    @status = status
    @instructor = instructor
    @@all << self
  end

  def self.all
    @@all
    #binding.pry
  end

end
