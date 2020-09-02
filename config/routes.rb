Rails.application.routes.draw do
  resources(:example, only: %i[index])
  resources(:cards, only: %i[index])
  root("home#index")
end
