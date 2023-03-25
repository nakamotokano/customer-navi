class Admins::CustomerdetailsController < ApplicationController
  before_action :authenticate_admin!

  def index
       #@staff = Staff.find(params[:id])
       @customerdetails =Customerdetail.all
       @customerdetail = Customerdetail.new
       
  end
  
  def show
    @customerdetail =Customerdetail.find(params[:id])
  end

  #def csv_output
  #@customerdetails =Customerdetail.all
  #csv_data = CSV.generate do |csv|
    #csv << ["姓", "名" ,"性別"]
    #@users.each do |user|
      #csv << [customerdetail.last_name, customerdetail.first_name,customerdetail.gender]
    #end
   #end
  #send_data(csv_data, filename: ".csv")
  #redirect_back(fallback_location: root_path)
#end
end

