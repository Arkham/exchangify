Rails.application.routes.draw do
  resources :conversions, only: [:new, :create]

  get "/", to: redirect("/conversions/new")
end
