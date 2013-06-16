FoodDecider::Application.routes.draw do
  get '/o/:group_order_id' => 'orders#new', as: :new_order

  resources :group_orders do
    resources :orders, shallow: true, except: [:new]
  end

  resources :decisions

  resources :restaurants

  get 'v/success' => 'votes#success', as: :success_vote
  get '/v/:decision_id' => 'votes#new', as: :new_vote
  post '/v/:decision_id' => 'votes#create', as: :votes

  root 'static_pages#home'
end
