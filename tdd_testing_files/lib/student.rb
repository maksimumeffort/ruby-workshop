class Student
  def initialize(grade:0)
    @grade = grade
  end

  def study
    "Yes I am studying"
  end

  def pass?
    @grade > 5
  end
end
