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

  def edit_addresses
    @student = Student.find(session[:student_id])
    @empty_addresses = []
    @student.addresses.each do |address|
      @empty_addresses << address
    end
    if @empty_addresses.count == 1
      @empty_addresses << @student.addresses.new
    end
    @empty_addresses[1][:address_type] = 'permanent'
  end

  def update_addresses
    Address.update_addresses(params[:addresses], session[:student_id])
  end

  def update
    n = 1
  end

  def edit
    @student = Student.find(session[:student_id])
    @empty_addresses = []
    @student.addresses.each do |address|
      @empty_addresses << address
    end
    if @empty_addresses.count == 1
        @empty_addresses << @student.addresses.new
    end
    @empty_addresses[1][:address_type] = 'permanent'
  end
end
