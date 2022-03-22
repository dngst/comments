Rails.application.routes.draw do
  root 'comments#index'
  post '/', to: 'comments#create'
end
