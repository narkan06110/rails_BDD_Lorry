class CreateJoinTablesDoctorSpecialities < ActiveRecord::Migration[5.2]
  def change
    create_table :join_tables_doctor_specialities do |t|
    	t.belongs_to :doctor
    	t.belongs_to :speciality

    	t.timestamps
    end
  end
end
