MergePatchTest::Application.routes.draw do
  root to: "welcome#index"
  resources :merges, only: [:index]
end
