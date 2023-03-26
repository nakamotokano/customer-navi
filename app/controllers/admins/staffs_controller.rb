class Admins::StaffsController < ApplicationController
  before_action :authenticate_admin!
  def index
       @staffs =Staff.all
       @staff = Staff.new
  end
  def show
       @staff =Staff.find(params[:id])
       @staffs=Staff.all
  end
  
   def destroy
     staff = Staff.find(params[:id]) # データ（レコード）を1件取得
     staff.destroy  # データ（レコード）を削除
     redirect_to 'admins/index'
  end
end
