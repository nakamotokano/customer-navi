class Admins::StaffsController < ApplicationController
  def index
       @customerdetails =Customerdetail.all
       @customerdetail = Customerdetail.new
  end
  
  def show
  end

  def edit
  end


  def update
  end
end
