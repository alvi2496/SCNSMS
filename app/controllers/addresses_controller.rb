class AddressesController < ApplicationController
  def new
    @student = Student.find(session[:student_id])
    @empty_addresses = []
    2.times do
      @empty_addresses << @student.addresses.new
    end
    @empty_addresses[0][:address_type] = 'present'
    @empty_addresses[1][:address_type] = 'permanent'
  end

  def create
    if Address.save_addresses(params[:addresses], session[:student_id])
      redirect_to new_educational_qualification_path
    else
      render :new
    end
  end
end
