RSpec.describe Student do

  it 'creates a student class' do
    student = Student.new
    expect(student).to be_kind_of(Student)
  end

end
