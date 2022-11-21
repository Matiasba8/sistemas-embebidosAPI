Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post "arduino_report", to: "main#arduino_report"
  post "create_new_task", to: "main#create_new_task"
  get "get_next_task", to: "main#get_next_task"
end
