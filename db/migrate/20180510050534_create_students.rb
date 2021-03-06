class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :bnc_student_id
      t.string :du_student_id
      t.string :program
      t.string :institution_name
      t.string :session
      t.string :length_of_program
      t.string :program_completion_length
      t.date :date_of_program_admission
      t.date :program_start_date
      t.date :program_completion_date
      t.integer :payment_method
      t.string :name
      t.string :full_name
      t.integer :sex
      t.string :father_name
      t.string :mother_name
      t.date :date_of_birth
      t.integer :blood_group
      t.string :national_id_number
      t.string :passport_number
      t.string :guardian_name
      t.string :relation_with_guardian
      t.integer :quota
      t.string :nationality
      t.integer :religion
      t.integer :marital_status
      t.string :email_address
      t.string :mobile_number
      t.timestamps
    end
  end
end
