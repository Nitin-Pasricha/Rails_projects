Rails.application.routes.draw do
  get 'students/index'
  get 'students/add_student'
  post 'students/add_student'

  get 'students/show_student/:id', to: 'students#show_student', as: 'show_student'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
