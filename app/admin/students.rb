ActiveAdmin.register Student do

permit_params :bnc_student_id, :du_student_id, :program, :institution_name, :session,
              :length_of_program, :date_of_program_admission, :program_start_date, :program_completion_date,
              :payment_method

end
