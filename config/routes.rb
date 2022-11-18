Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users

  get "/", to: "homes#index"

  get "/videos", to: "homes#index"

  get "/creators", to: "homes#index"

  get "/videos/:id", to: "homes#index"

  get "creators/:id", to: "homes#index"

  #  /controllers/api/v1/videos_controller
    # api controller will render json

    # api/v1/creators/:creator_id/vidoes
    # may not be necessary, because on a createor show page `/creator/:id` - you cana query and display the associated videos for that creator
    # may need to nest creator and video is when a creator wants to `create`` a new Video in your DB

  # we would need the current user in React to conditionally handle whether a user can see something or not
  # when we want to allow the current_user to create/like/favorite something, we can access the `currnt_user` using the devise `current_user` method in the (API) controller

  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :creators, only: [:index, :show]
      resources :videos, only: [:index, :show] 
      # api/v1/current_user
      # get'/current-user', to: "current_user#index"
    end
  end

end