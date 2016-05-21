Rails.application.routes.draw do
  resources :jewelries do
    resources :items
  end

  root "jewelries#index"
end
