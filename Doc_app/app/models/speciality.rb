class Speciality < ApplicationRecord
	has_many :join_tables_doctor_speciality
	has_many :doctor, through: :join_tables_doctor_specialities
end
