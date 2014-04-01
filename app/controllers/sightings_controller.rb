class SightingsController < ApplicationController

  def new
    @sighting = Sighting.new
    render('species/show.html.erb')
  end

  def create
    @sighting = Sighting.new(params[:sighting])
    if @sighting.save
      redirect_to('species/<%= Specie.find(@sighting.species_id).id %>')
    else
      render('species/show.html.erb')
    end
  end

  def edit
    @sighting = Sighting.find(params[:id])
    render('sightings/edit.html.erb')
  end

  def update
    @specie = Specie.find(params[:specie_id])
    @sighting = Sighting.find(params[:id])
    @sighting.update(params[:sighting])
    render('sightings/success.html.erb')
  end

end
