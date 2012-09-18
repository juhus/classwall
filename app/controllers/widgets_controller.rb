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
		@widget = @wall.widgets.new(params[:widget])
		@widget.user_id = current_user.id
		@widget.save
		respond_to do |format|
			format.js
			format.html {redirect_to @wall}
		end
	end
end
