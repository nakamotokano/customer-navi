Rails.application.routes.draw do
  
devise_for :admins, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admins/sessions"
}
get 'admins/index'=> 'admins/staffs#index'
  #get 'admins/edit'
  #get 'admins/update'
  
  
  devise_for :staffs
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

