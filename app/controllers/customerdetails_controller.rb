class CustomerdetailsController < ApplicationController
  def new
    @customerdetail = Customerdetail.new
  end
  
  def create
    # １.2 データを受け取り新規登録するためのインスタンス作成
    customerdetail = Customerdetail.new(customerdetail_params)
    # 3. データをデータベースに保存するためのsaveメソッド実行
    customerdetail.save
    # 4. トップ画面へリダイレクト
    redirect_to '/top'
  end
  
  def top
  end

  def index
  end

  def show
  end

  def edit
  end
  
    def customerdetail_params
    params.require(:customerdetail).permit(:last_name, :first_name, :nickname, :gender, :post_code, :profession , :address , :annual_income , :repeat , :marriage, :children , :visits, :unit_price , :phone_number , :email)
  end
end
