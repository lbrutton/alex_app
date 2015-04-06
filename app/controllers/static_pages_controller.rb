class StaticPagesController < ApplicationController
  def home
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

  def help
  end
end
