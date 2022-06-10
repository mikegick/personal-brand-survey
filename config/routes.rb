Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "surveys#new"

  get "/ready", to: proc { [200, {}, [""]] }

  scope "/surveys" do
    get "/", to: "surveys#new", as: "new_survey"
    post "/submit", to: "surveys#submit_response", as: "new_survey_response"
  end
end
