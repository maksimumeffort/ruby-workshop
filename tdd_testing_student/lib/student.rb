class Student
  def initialize(grade:0)
    @grade = grade
  end

  def read
    "Yes I am reading"
  end

  def study
    @grade = 7
  end

  def pass?
    @grade > 5
  end
end
