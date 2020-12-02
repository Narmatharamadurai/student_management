class CountriesController < ApplicationController
	def create
    @booking = Country.create(countries_params)
    @booking.save
end
