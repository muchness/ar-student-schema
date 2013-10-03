require './db/config'
require './app/models/teacher'
require './app/models/student'

Student.all.each do |student|
  5.times{student.teachers << Teacher.find(rand(1..8)) }
end