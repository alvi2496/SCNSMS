class EducationalQualificationsController < ApplicationController
  def new
    @student = Student.find(session[:student_id])
    @educational_qualifications = []
    5.times do
      @educational_qualifications << @student.educational_qualifications.new
    end
    # @educational_qualifications = @student.educational_qualifications.build
  end

  def create
    if EducationalQualification.store(params[:educational_qualifications], session[:student_id])
      redirect_to student_path(Student.find(session[:student_id]))
    else
      render :new
    end
  end
end
