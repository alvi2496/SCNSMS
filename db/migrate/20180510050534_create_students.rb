class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :bnc_student_id
      t.string :du_student_id
      t.string :program
      t.string :institution_name
      t.string :session
      t.string :length_of_program
      t.date :date_of_program_admission
      t.date :program_start_date
      t.date :program_completion_date
      t.integer :payment_method
      t.timestamps
    end
  end
end
