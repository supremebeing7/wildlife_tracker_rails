WildlifeTracker::Application.routes.draw do
  match('/', {:via => :get, :to => 'species#index'})
  match('/species', {:via => :get, :to => 'species#index'})
  match('/species', {:via => :get, :to => 'species#new'})
  match('/species', {:via => :post, :to => 'species#create'})
  match('/species/:id', {:via => :get, :to => 'species#show'})
  # match('/species/:id/edit', {:via => :get, :to => 'species#edit'})
  match('/species/:id', {:via => [:patch, :put], :to => 'species#update'})
  match('/species/', {:via => :delete, :to => 'species#destroy'})

  match('/species/:id', {:via => :get, :to => 'sightings#new'})
  match('/species/:id', {:via => :post, :to => 'sightings#create'})
  match('/species/:specie_id/sightings/:id/edit', {:via => :get, :to => 'sightings#edit'})
  match('/species/:specie_id/sightings/:id', {:via => [:patch, :put], :to => 'sightings#update'})


end
