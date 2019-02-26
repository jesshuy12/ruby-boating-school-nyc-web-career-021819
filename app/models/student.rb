class Student

  attr_accessor :first_name

  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
    #binding.pry
  end

  def self.all
    @@all
    #binding.pry
  end

  def add_boating_test(test_name, status, instructor)
    BoatingTest.new(self, test_name, status, instructor)
    #binding.pry
  end

  def self.find_student(first_name)
    self.all.map do |student|
      student.first_name = first_name
      binding.pry
    end
  end

  def grade_percentage
    tests_taken = 0
    tests_passed = 0
    BoatingTest.all.each do |test|
      if test.student == self
        tests_taken += 1
        if test.status == "passed"
          tests_passed += 1
        end
      end
    end
    (tests_pass.to_f / tests_taken.to_f) * 100
  end

end
