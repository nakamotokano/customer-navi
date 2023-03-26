Rails.application.routes.draw do
  
  
devise_for :admins, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admins/sessions"
}

  #adomin側スタッフ関連
  get 'admins/index'=> 'admins/staffs#index'
  get 'admins/staffs/:id'=> 'admins/staffs#show', as: 'admins_staff'
  #adomin側顧客詳細関連
  get 'admins/customerdetails/index'=> 'admins/customerdetails#index'
  get 'admins/customerdetails/:id'=> 'admins/customerdetails#show', as: 'admins_customerdetail'

  devise_for :staffs
  #staff側のスタッフ関連
  get 'staffs/:id'=> 'staffs#show', as: 'staff'
  get 'staffs/:id/edit'=> 'staffs#edit', as: 'edit_staff'
  patch 'staffs/:id' => 'staffs#update', as: 'update_staff'
  #ホーム
  root to: 'homes#top'
  get 'homes/top'
  #staff側の顧客詳細関連
  get '/top' => 'customerdetails#top'
  get '/index' => "customerdetails#index"
  get 'customerdetails/new'
  post 'customerdetails' =>'customerdetails#create'
  get 'customerdetails/:id'=> 'customerdetails#show', as: 'customerdetail'
  get 'customerdetails/:id/edit' => 'customerdetails#edit', as: 'edit_customerdetail'
  patch 'customerdetails/:id' => 'customerdetails#update', as: 'update_customerdetail'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

