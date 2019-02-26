class Student

  attr_accessor :first_name
  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
    # binding.pry
  end

  def self.all
    @@all
  end

  def add_boating_test(test_name, status, instructor)
    BoatingTest.new(self, test_name, status, instructor)
    #binding.pry
  end

  def self.find_student(first_name)
    self.all.find do |student|        #uses find, because we only need the first student with that name
      student.first_name = first_name
    end
  end

  #HELPER#
  def boating_test_helper
    BoatingTest.all.select do |test|
      test.student == self
    end
  end

  def grade_percentage
    tests_taken = 0
    tests_passed = 0
    #BoatingTest.all.each do |test|  
      #if test.student == self
      self.boating_test_helper.select do |test|
        tests_taken += 1
        if test.status == "passed"
          tests_passed += 1
        end
      end
    (tests_passed.to_f / tests_taken.to_f) * 100
  end

end
