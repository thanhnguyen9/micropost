Rails.application.routes.draw do

  resources :relationships

  root 'pages#private'

  get 'posts/new'

  get 'posts/create'

  get 'sessions/new', as: :sign_in
  post "/sessions" => "sessions#create", as: :sessions
  delete "sessions" => "sessions#sign_out", as: :destroy_session





  get "private" => 'pages#private'
  get 'public' => 'pages#public'



  get 'private/posts/new' => 'posts#new', as: :new

  post '/posts' => 'posts#create'

  get '/posts/show' => 'posts#show'

  get '/private/posts' => 'posts#index'

  delete '/private/posts' => 'posts#delete'




  get '/users/new' => 'users#new', as: :users_new

  post '/users' => 'users#create'

  delete '/relationships' => "relationships#destroy"


  get '/talk' => 'pages#talk'

  get '/change_background_color' => 'pages#change'

  get '/jokes' => 'pages#jokes'

end
