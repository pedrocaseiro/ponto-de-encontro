Rails.application.routes.draw do
  get '/:page' => 'pages#show'
  root 'pages#show', page: 'home'
end
