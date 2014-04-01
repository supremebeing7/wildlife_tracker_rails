class SpeciesController < ApplicationController
  def index
    @species = Specie.all
    render('species/index.html.erb')
  end

  def new
    @specie = Specie.new
    render('species/index.html.erb')
  end

  def create
    @specie = Specie.create(params[:specie])
    render('species/index.html.erb')
  end

  def show
    @specie = Specie.find(params[:id])
    @sighting = Sighting.new
    render('species/show.html.erb')
  end

  def edit
    @specie = Specie.find(params[:id])
    render('species/show.html.erb')
  end

  def update
    @specie = Specie.find(params[:id])
    if @specie.update(params[:specie])
      render('species/success.html.erb')
    else
     render('species/show.html.erb')
    end
  end

  def destroy
    @specie = Specie.find(params[:id])
    @specie.sightings.each { |sighting| sighting.destroy }
    @specie.destroy
    render('species/destroy.html.erb')
  end
end
