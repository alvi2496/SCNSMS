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
    n = 1
  end
end
