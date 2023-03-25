class Admins::StaffsController < ApplicationController
  before_action :authenticate_admin!
  def index
       @staffs =Staff.all
       @staff = Staff.new
  end
end
