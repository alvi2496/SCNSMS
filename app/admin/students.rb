ActiveAdmin.register Student do

  permit_params :bnc_student_id, :du_student_id, :program, :institution_name, :session,
                :length_of_program, :date_of_program_admission, :program_start_date, :program_completion_date,
                :payment_method, :name, :full_name, :sex, :father_name, :mother_name, :date_of_birth,
                :national_id_number, :passport_number, :guardian_name, :relation_with_guardian, :quota,
                :nationality, :religion, :marital_status, :email_address, :mobile_number, :avatar

  form do |f|
    f.inputs do
      f.input :bnc_student_id, label: 'BNC Student ID'
      f.input :du_student_id, label: 'DU Student ID'
      f.input :program, label: 'Program/ Course Type'
      f.input :institution_name
      f.input :session
      f.input :length_of_program, label: 'Length of Program/Course'
      f.input :date_of_program_admission, label: 'Date of Program/ Course Admission'
      f.input :program_start_date, label: 'Program/ Course Starting Date'
      f.input :program_completion_date, label: 'Program/ Course Completion Date'
      f.input :payment_method
      f.input :name, label: 'Name (Bangla)'
      f.input :full_name, label: 'Full Name (English)'
      f.input :sex
      f.input :father_name, label: 'Father\'s Name(English)'
      f.input :mother_name, label: 'Mother\'s Name (English)'
      f.input :date_of_birth
      f.input :national_id_number, label: 'National ID No.'
      f.input :passport_number, label: 'Passport No'
      f.input :guardian_name
      f.input :relation_with_guardian
      f.input :quota, label: 'Quota ( Grand Daughter/ Son or Great GrandDaughter/ Son of Freedom Fighter)'
      f.input :nationality
      f.input :religion
      f.input :marital_status
      f.input :email_address, label: 'E-mail Address'
      f.input :mobile_number
      f.input :avatar, as: :file, label: 'Image'
    end
    # f.has_many :personal_information do |p|
    #   p.input :name
    # end
    f.actions
  end

end
