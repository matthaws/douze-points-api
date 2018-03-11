class CountriesController < ApplicationController
  def index
    @countries = Country.all
  end

  def show
    @country = Country.includes(:entries, :contests, :hosted_contests).find(params[:id])
  end
end
