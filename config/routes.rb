WildlifeTracker::Application.routes.draw do
  match('/', {:via => :get, :to => 'species#index'})
  match('/species', {:via => :get, :to => 'species#index'})
  match('/species', {:via => :get, :to => 'species#new'})
  match('/species', {:via => :post, :to => 'species#create'})
  match('/species/:id', {:via => :get, :to => 'species#show'})
  # match('/species/:id/edit', {:via => :get, :to => 'species#edit'})
  match('/species/:id', {:via => [:patch, :put], :to => 'species#update'})
  match('/species/:id', {:via => :delete, :to => 'species#destroy'})

  match('/species/:id', {:via => :get, :to => 'sightings#new'})
  match('/species/:id', {:via => :post, :to => 'sightings#create'})
  match('/species/:specie_id/sightings/:id/edit', {:via => :get, :to => 'sightings#edit'})
  match('/species/:specie_id/sightings/:id', {:via => [:patch, :put], :to => 'sightings#update'})
  match('/species/:specie_id/sightings/:id', {:via => :delete, :to => 'sightings#destroy'})

  match('/', {:via => :get, :to => 'regions#new'})
  match('/regions', {:via => :post, :to => 'regions#create'})
  match('/regions/:id/edit', {:via => :get, :to => 'regions#edit'})
  match('/regions/:id', {:via => [:patch, :put], :to => 'regions#update'})
  match('/regions/:id', {:via => :delete, :to => 'regions#destroy'})
end
