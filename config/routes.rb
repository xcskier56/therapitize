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

  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
  resources :student_preferences
  resources :supervisor_preferences

  match '/welcome',   to: 'welcome#welcome', via: :get
  match '/welcome2',  to: 'welcome#welcome2', via: :get
  match '/welcome3',  to: 'welcome#welcome3', via: :get

end
