class PagesController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:home]
  def home
  	@facilities = Facility.all
	  @hash = Gmaps4rails.build_markers(@facilities) do |facility, marker|
		 marker.lat facility.latitude
		 marker.lng facility.longitude
    end
  end
end
