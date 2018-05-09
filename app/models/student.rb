class Student < ApplicationRecord
	validates_presence_of :name, :student_number, :faculty

end
