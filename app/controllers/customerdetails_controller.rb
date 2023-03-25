class CustomerdetailsController < ApplicationController
  before_action :authenticate_staff!

  def new
    @customerdetail = Customerdetail.new
  end

  def create
    # １.2 データを受け取り新規登録するためのインスタンス作成
    @customerdetail = Customerdetail.new(customerdetail_params)

    @customerdetail.staff_id = current_staff.id
    # 3. データをデータベースに保存するためのsaveメソッド実行
    if @customerdetail.save
    # 4. トップ画面へリダイレクト
    #redirect_to customerdetail_path(customerdetail.id)
    redirect_to index_path
    else
    render :new
    end
  end

  def index
     @customerdetails =current_staff.customerdetails.all
     @customerdetail = Customerdetail.new
  end

  def show
    @customerdetail =Customerdetail.find(params[:id])
  end

  def edit
    @customerdetail =Customerdetail.find(params[:id])
  end

  def update
     @customerdetail = Customerdetail.find(params[:id])
    if @customerdetail.update(customerdetail_params)
       redirect_to customerdetail_path(@customerdetail.id)
    else
    render :edit
    end   
  end

    def customerdetail_params
    params.require(:customerdetail).permit(:last_name, :first_name, :nickname, :gender, :post_code, :profession , :address , :annual_income , :repeat , :marriage, :children , :visits, :usage_amount ,:unit_price , :phone_number , :email , :birthday , :visit_frequency , :month_sales_target , :gole_sales_target)
    end
end