class Instructor

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def pass_student(student, test_name)
    BoatingTest.all.each do |test|  #needs to iterate thru BoatingTest
      if test.student == student && test.test_name == test_name #if given argument matches
        test.status = "passed" #change status to passed
        #binding.pry
      else
        BoatingTest.new(student, test_name, "passed", self) #if not, create new test
      end
    end
  end

  def fail_student(student, test_name)
    BoatingTest.all.each do |test|   #iterate thru Boatingtest, where all the tests are stored
      if test.student == student && test.test_name == test_name  #argurement matching
        test.status = "failed"  #change status to passed, accessed status with test.status
      else
        BoatingTest.new(student, test_name, "failed", self)
      end
    end
  end

end
