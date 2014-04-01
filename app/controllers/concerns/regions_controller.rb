class RegionsController < ApplicationController

  def new
    @region = Region.new
    render('species/index.html.erb')
  end

  def create
    @region = Region.create(params[:region])
    render('species/index.html.erb')
  end

  def edit
    @region = Region.find(params[:id])
    render('regions/edit.html.erb')
  end

  def update
    @region = Region.find(params[:id])
    @region.update(params[:region])
    render('species/index.html.erb')
  end

  def destroy
    @region = Region.find(params[:id])
    @region.destroy
    render('species/index.html.erb')
  end
end
