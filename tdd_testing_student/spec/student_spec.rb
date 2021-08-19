require_relative '../lib/student.rb'

RSpec.describe Student do

  subject {Student.new}

    describe '#read' do
      it 'responds positively to study message' do
        expect(subject.read).to eq("Yes I am reading")
      end

    describe '#study' do
      context 'when the student has not passed' do
        subject {described_class.new(grade:5)}

        it 'has passed the exam' do
          subject.study
          expect(subject).to be_pass
        end
      end
    end

    describe '#pass?' do
      context 'when grade is more than 5' do
        subject {described_class.new(grade:7)}

        it 'return true' do
          expect(subject).to be_pass
        end
      end

      context 'when grade is 5 or less' do
        subject {described_class.new(grade:5)}

        it 'return false' do
          expect(subject).to_not be_pass
        end
      end

    end

    describe "major"
      subject {described_class.new(major:)})

      it 'return mojor study' do

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
