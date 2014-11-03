Rails.application.routes.draw do
  authenticated :user do
    devise_scope :user do
      root to: "users#show", :as => "profile"
    end
  end
  unauthenticated do
    devise_scope :user do
      root to: "landing_pages#home", :as => "landing"
    end
  end

  devise_for :users
  resources :users

  devise_for :students
  resources :students

  devise_for :supervisors
  resources :supervisors

end
