class StudentsController < ApplicationController

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      session[:student_id] = @student.id
      redirect_to new_address_path
    else
      render :new
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    if @student.update_attributes(student_params)
      redirect_to new_address_path
    else
      render :new
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
