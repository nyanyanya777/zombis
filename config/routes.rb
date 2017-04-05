Rails.application.routes.draw do

  get 'relatiships/create'

  get 'relatiships/destroy'

    devise_for :users, controllers: {
      registrations: "users/registrations",
      omniauth_callbacks: "users/omniauth_callbacks"
    }

  resources :blogs, only:[:index, :create, :show,
  :edit, :destroy]

  resources :users, only:[:index]

  resources :relationships, only: [:create, :destroy]

  root 'blogs#index'

  if Rails.env.development?
  mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
