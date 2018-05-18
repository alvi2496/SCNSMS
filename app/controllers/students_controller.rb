class StudentsController < ApplicationController
  def create
    @student = Student.new(student_params)
    if @student.save
      flash[:notice] = 'Student saved successfully'
      redirect_to new_address_path
    else
      flash[:alert] = 'Student was not saved successfully'
    end
  end

  private

  def student_params
    params.require(:student).permit(:name, :full_name, :date_of_birth, :father_name, :mother_name,
                                    :religion, :sex, :blood_group, :marital_status, :national_id_number,
                                    :passport_number, :nationality, :guardian_name, :relation_with_guardian,
                                    :mobile_number, :email_address, :avatar)
  end
end
