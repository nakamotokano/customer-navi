Rails.application.routes.draw do
  get '/top' => 'customerdetails#top'
  get 'customerdetails/index'
  get 'customerdetails/new'
  post 'customerdetails' =>'customerdetails#create'
  get 'customerdetails/show'
  get 'customerdetails/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
