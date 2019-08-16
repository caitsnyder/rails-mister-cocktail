Rails.application.routes.draw do
  root :to => "cocktails#index"
  resources :cocktails do
    resources :doses, except: [:destroy, :update, :edit, :show]
  end

  resources :doses, only: [:destroy, :update, :edit, :show]
end
