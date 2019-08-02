class Doctor < ApplicationRecord
	has_many :appointements
	has_many :patients, through: :appointements
	belongs_to :city
	has_many :join_tables_doctor_specialities
	has_many :specialitys, through: :join_tables_doctor_specialities
end
