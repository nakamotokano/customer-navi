class StaffsController < ApplicationController
  before_action :authenticate_staff!
  def show
    @staff = Staff.find(params[:id])
  end

  def edit
    @staff = Staff.find(params[:id])
  end
  def update
    @staff = Staff.find(params[:id])
    if @staff.update(staff_params)
      redirect_to staff_path(@staff.id)
    else
    render :edit
    end
  end
  private
  def staff_params
    params.require(:staff).permit(:name, :email)
  end
end
