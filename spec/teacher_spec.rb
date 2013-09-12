require 'rspec'
require 'date'
require_relative '../app/models/teacher'

describe Teacher, "teach_validations" do

  before(:each) do
    @teacher = Teacher.new
    @teacher.assign_attributes(
      :email => 'test@email.com'
    )
  end

  it "shouldn't allow two teachers with the same email" do
    another_teacher = Teacher.create!(
      :email => @teacher.email
    )
    @teacher.should_not be_valid
  end

end
