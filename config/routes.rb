Rails.application.routes.draw do
  devise_for :users
  resources :blogs, only:[:index, :create, :show,
  :edit, :destroy]
  root 'blogs#index'
  if Rails.env.development?
  mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
