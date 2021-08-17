require_relative '../lib/student.rb'

RSpec.describe Student do

  subject {Student.new}

    describe '#study' do
      it 'responds positively to study message' do
        expect(subject.study).to eq("Yes I am studying")
      end

    describe '#passed?' do
      it 'return true if grade is more than 5' do
        successful_student = Student.new(grade:7)
        expect(successful_student.passed?).to eq(true)
      end

    end
  end



  # Checks whether students create
  # it 'creates a student class' do
  #   student = Student.new
  #   expect(student).to be_kind_of(Student)
  # end

  # # Checks if a student class has a study method
  # it 'studies' do
  #   student = Student.new
  #   expect(student).to respond_to(:study)
  # end

  # # Check that the response to the study message is the one we expect
  # it 'responds positively to study message' do
  #   student = Student.new
  #   expect(student.study).to eq "Yes I am studying"
  # end
end
