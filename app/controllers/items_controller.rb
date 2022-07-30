class ItemsController < ApplicationController

  def index
    @supermarket = Supermarket.find(params[:id])
    require 'pry'; binding.pry 
  end

end