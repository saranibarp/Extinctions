class ClassificationsController < ApplicationController
  def index
    @classifications = Classification.order(:name);
  end

  def show
    @classification = Classification.find(params[:id])
  end
end
