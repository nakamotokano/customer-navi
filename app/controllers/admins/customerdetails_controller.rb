class Admins::CustomerdetailsController < ApplicationController
  before_action :authenticate_admin!

  def index
       @customerdetails =Customerdetail.all
       @customerdetail = Customerdetail.new
       
  end
  
  def show
    @customerdetail =Customerdetail.find(params[:id])
  end
end

