ActiveAdmin.register Student do

  permit_params :bnc_student_id, :du_student_id, :program, :institution_name, :session,
                :length_of_program, :date_of_program_admission, :program_start_date, :program_completion_date,
                :payment_method, :name, :full_name, :sex, :father_name, :mother_name, :date_of_birth,
                :national_id_number, :passport_number, :guardian_name, :relation_with_guardian, :quota,
                :nationality, :religion, :marital_status, :email_address, :mobile_number

  # form do |f|
  #   f.inputs do
  #     f.input :bnc_student_id
  #     f.input :du_student_id
  #     f.input :program
  #     f.input :institution_name
  #     f.input :session
  #     f.input :length_of_program
  #     f.input :date_of_program_admission
  #     f.input :program_start_date
  #     f.input :program_completion_date
  #     f.input :payment_method
  #   end
  #   f.has_many :personal_information do |p|
  #     p.input :name
  #   end
  #   f.actions
  # end

end
