class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def status 
    if self.active == true 
      return "active"
    else
     return  "inactive"
    end
  end

  def activate_student
    self.toggle(:active)
  end
end