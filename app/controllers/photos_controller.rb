class PhotosController < WidgetsController
	def new
		@wall = Wall.find(params[:wall_id])
		@post = @wall.posts.new
	end
end