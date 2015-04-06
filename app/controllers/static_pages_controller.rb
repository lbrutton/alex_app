class StaticPagesController < ApplicationController
  def home
  	@first_post = Post.where(date: Date.today).first
  end

  def help
  end
end
