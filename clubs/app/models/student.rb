class Student < ApplicationRecord
    has_many :student_clubs
    has_many :clubs, through: :student_clubs
end
