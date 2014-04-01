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
    @specie = Specie.new(params[:specie])
    if @specie.save
      render('species/success.html.erb')
    else
      render('species/index.html.erb')
    end
  end

  def show
    @specie = Specie.find(params[:id])
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
end
