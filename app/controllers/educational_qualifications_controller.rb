class EducationalQualificationsController < ApplicationController
  def new
    @student = Student.find(session[:student_id])
    @educational_qualifications = @student.educational_qualifications.build
  end
end
