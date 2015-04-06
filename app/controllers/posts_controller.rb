class PostsController < ApplicationController
	def show
		@posts = Post.all
	end

	def edit
	end

	def new
		@post = Post.new
	end

	def destroy
		@post = Post.find(params[:id]).destroy
		redirect_to show_posts_path
	end

	def create
		@post = Post.new(post_params)
		if @post.save
			redirect_to show_posts_path
		else
			render 'new'
		end
	end

	private

	def post_params
		params.require(:post).permit(:joke, :answer, :image)
	end

end
