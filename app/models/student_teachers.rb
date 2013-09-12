require_relative '../../db/config'

class Student_Teachers
  belongs_to :student
  belongs_to :teacher
end
