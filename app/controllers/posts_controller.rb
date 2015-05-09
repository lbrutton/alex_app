class PostsController < ApplicationController
	def index
  	if Post.where(date: Date.today).first != nil
	  	@first_post = Post.where(date: Date.today).first
	  	if @first_post.start_color != nil
	  		@start_color = @first_post.start_color
	  	else
	  		@start_color = "#ffffff"
	  	end
		else
			@first_post = nil
		end
  	end

	def show
		@posts = Post.all
	end

	def edit
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to show_posts_url
	end

	def create
		@post = Post.new(post_params)
		if @post.save
			redirect_to posts_url
		else
			render 'new'
		end
	end

	def update
		@post = Post.find(params[:id])
		@post.update(post_params)
		redirect_to show_posts_url
	end



	private

	def post_params
		params.require(:post).permit(:joke, :answer, :image, :date, :start_color)
	end

end
