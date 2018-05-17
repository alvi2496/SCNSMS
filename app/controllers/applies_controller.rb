class AppliesController < ApplicationController
  def new
    @student = Student.new
  end
end
