class PdfController < ApplicationController
  before_action :authenticate_admin_user!

  def show
    @student = Student.find(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "#{@student.id} - #{student.full_name}"
      end
    end
  end
end
