class AnimalsController < ApplicationController
  def index
    @animals = Animal.order(extinction_date: :desc)
  end

  def show
    @animal = Animal.find(params[:id])
  end
end
