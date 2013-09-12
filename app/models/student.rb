require_relative '../../db/config'

class Student < ActiveRecord::Base
  validates :email, :format => { :with => /.+@.+\..{2,}/}
  validates :email, :uniqueness => true
  validates :age, :numericality => { :greater_than => 5 }
  validates :phone, :format => { :with => /\d{3}.*\d{3}.*\d{4}/}

  def name
    self.first_name + " " + self.last_name
  end

  def age
    now = Date.today
    age = now.year - self.birthday.year - ((now.month > self.birthday.month || (now.month == self.birthday.month && now.day >= self.birthday.day)) ? 0 : 1)
  end
end


