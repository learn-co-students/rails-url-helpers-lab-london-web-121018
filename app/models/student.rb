class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def set_a
    self.active = !self.active
    self.save
  end 


  def  a_str
    str = "This student is currently active."
    if self.active == false
      str = "This student is currently inactive."
    end
    return str
  end
end