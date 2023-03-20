class CustomerdetailsController < ApplicationController
  def new
    @customerdetail = Customerdetail.new
  end
  
  def create
    # １.2 データを受け取り新規登録するためのインスタンス作成
    @customerdetail = Customerdetail.new(customerdetail_params)
    # 3. データをデータベースに保存するためのsaveメソッド実行
    if @customerdetail.save
    # 4. トップ画面へリダイレクト
    #redirect_to customerdetail_path(customerdetail.id)
    redirect_to index_path
    else
    render :new
    end
  end
  
  def top
  end

  def index
     @customerdetails =Customerdetail.all
     @customerdetail = Customerdetail.new
  end

  def show
    @customerdetail =Customerdetail.find(params[:id])  
  end

  def edit
    @customerdetail =Customerdetail.find(params[:id])  
  end
  
  def update
    customerdetail = Customerdetail.find(params[:id])
    customerdetail.update(customerdetail_params)
    redirect_to customerdetail_path(customerdetail.id)  
  end
  
    def customerdetail_params
    params.require(:customerdetail).permit(:last_name, :first_name, :nickname, :gender, :post_code, :profession , :address , :annual_income , :repeat , :marriage, :children , :visits, :unit_price , :phone_number , :email , :birthday , :visit_frequency , :month_sales_target , :gole_sales_target)
    end
end
