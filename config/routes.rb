Rails.application.routes.draw do
  get '/top' => 'customerdetails#top'
  get '/' => "customerdetails#index"
  get 'customerdetails/new'
  post 'customerdetails' =>'customerdetails#create'
  get 'customerdetails/:id'=> 'customerdetails#show', as: 'customerdetail'
  get 'customerdetails/:id/edit' => 'customerdetails#edit', as: 'edit_customerdetail'
  patch 'customerdetails/:id' => 'customerdetails#update', as: 'update_customerdetail'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
