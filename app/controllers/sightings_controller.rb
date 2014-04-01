class SightingsController < ApplicationController

  def new
    @sighting = Sighting.new
    render('species/show.html.erb')
  end

  def create
    @sighting = Sighting.create(params[:sighting])
    @specie = Specie.find(@sighting.specie_id)
    render('species/show.html.erb')
  end

  def edit
    @sighting = Sighting.find(params[:id])
    render('sightings/edit.html.erb')
  end

  def update
    @specie = Specie.find(params[:specie_id])
    @sighting = Sighting.find(params[:id])
    @sighting.update(params[:sighting])
    # render('sightings/success.html.erb')
    render('species/show.html.erb')
  end

  def destroy
    @specie = Specie.find(params[:specie_id])
    @sighting = Sighting.find(params[:id])
    @sighting.destroy
    render('species/show.html.erb')
  end

end
