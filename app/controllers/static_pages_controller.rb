class StaticPagesController < ApplicationController
  def home
  	@first_post = Post.find(1)
  end

  def help
  end
end
