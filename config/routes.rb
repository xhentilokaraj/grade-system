GradeSystem::Application.routes.draw do
  resources :instructors
  resources :courses do
    resources :assessments
    resources :enrollments do
      resources :grades
    end
  end
  resources :students
end
