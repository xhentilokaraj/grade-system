GradeSystem::Application.routes.draw do
  resources :instructors
  resources :courses do
    resources :assessments
  end
end
