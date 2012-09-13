class WidgetsController < ApplicationController
	def new
		@wall=Wall.find(params[:wall_id])
		@widget = @wall.widgets.new
		respond_to do |format|
			format.js 
		end
	end
	def create
		@wall=Wall.find(params[:wall_id])
		@widget = @wall.widgets.create(params[:widget])
		respond_to do |format|
			format.js
			format.html {redirect_to @wall}
		end
	end
end
