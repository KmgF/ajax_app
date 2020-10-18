Rails.application.routes.draw do
  root to: 'posts#index'
  # get 'posts/new', to: 'posts#new'
  post 'posts', to:'posts#create'
  # get 'posts', to: 'posts#checked' ＃queryパラメーター
  get 'posts/:id', to: 'posts#checked'
end
