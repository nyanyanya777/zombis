Rails.application.routes.draw do
  resources :blogs, only:[:index, :create, :show,
  :edit, :destroy]
  root 'blogs#index'

  devise_for :users, controllers: {
    omniauth_callbacks: "users/omniauth_callbacks"
    registrations: "users/registrations",
  }

  if Rails.env.development?
  mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
