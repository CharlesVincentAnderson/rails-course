class Club < ApplicationRecord
    has_many :student_clubs
    has_many :students, through: :student_clubs
end
