Rails.application.routes.draw do
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root    'static_pages#splash'
    get     '/home',    to: 'static_pages#home'
    get     '/help',    to: 'static_pages#help'
    get     '/about',   to: 'static_pages#about'
    get     '/signup',  to: 'users#new'
    post    '/signup',  to: 'users#create'
    get     '/login',   to: 'sessions#new'
    post    '/login',   to: 'sessions#create'
    delete  '/logout',  to: 'sessions#destroy'
    resources :users
    resources :words do
        collection do
            get '/vocabulary', :to => 'words#show', :as => 'dictionary'
            get '/vocabulary/:letter', :to => 'words#index', :as => 'vocabulary'
            get '/greetings', :to => 'words#greetings', :as => 'greetings'
            get '/calendar', :to => 'words#calendar', :as => 'calendar'
            get '/numbers', :to => 'words#numbers', :as => 'numbers'
        end
    end
    match '*path' => redirect('/'), via: :get
end
