class WallsController < ApplicationController
	def show
		@experiences = Experience.order("created_at desc")
	end
end
