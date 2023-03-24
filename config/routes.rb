Rails.application.routes.draw do
  
  
devise_for :admins, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admins/sessions"
}
get 'admins/index'=> 'admins/staffs#index'
  #get 'admins/edit'
  #get 'admins/update'
  
get 'admins/customerdetails/index'=> 'admins/customerdetails#index'
get 'admins/customerdetails/:id'=> 'admins/customerdetails#show', as: 'admins_customerdetail'

  devise_for :staffs
  get 'staffs/:id'=> 'staffs#show', as: 'staff'
  #get 'staffs/show'
  get 'staffs/:id/edit'=> 'staffs#edit', as: 'edit_staff'
  patch 'staffs/:id' => 'staffs#update', as: 'update_staff'
   #get 'staffs/edit'
  root to: 'homes#top'
  get 'homes/top'
  get '/top' => 'customerdetails#top'
  get '/index' => "customerdetails#index"
  get 'customerdetails/new'
  post 'customerdetails' =>'customerdetails#create'
  get 'customerdetails/:id'=> 'customerdetails#show', as: 'customerdetail'
  get 'customerdetails/:id/edit' => 'customerdetails#edit', as: 'edit_customerdetail'
  patch 'customerdetails/:id' => 'customerdetails#update', as: 'update_customerdetail'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

