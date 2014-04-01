WildlifeTracker::Application.routes.draw do
  match('/', {:via => :get, :to => 'species#index'})
end
