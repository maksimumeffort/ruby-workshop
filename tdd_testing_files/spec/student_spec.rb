require_relative '../lib/student.rb'

RSpec.describe Student do

  subject {Student.new}

    describe '#study' do
      it 'responds positively to study message' do
        expect(subject.study).to eq("Yes I am studying")
      end

    describe '#pass?' do
      context 'when grade is more than 5' do
        it 'return true' do
          student = described_class.new(grade:7)
          expect(student).to be_pass
        end
      end

      context 'when grade is 5 or less' do
        it 'return false' do
          student = described_class.new(grade:5)
          expect(student).to_not be_pass
        end
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
