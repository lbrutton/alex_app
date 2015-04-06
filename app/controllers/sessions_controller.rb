class SessionsController < ApplicationController

  def new
  end

  def create
  	admin = Admin.find_by(email: params[:session][:email])
  	if admin && admin.password == params[:session][:password]
  		session[admin.id] = admin.id
  		redirect_to show_posts_path
  	else
  		flash[:danger] = 'I told you to fuck off' # Not quite right! 
      #because the error messages stays for a bit too long
  		render 'new'
  	end
  end

  def destroy
  end

end
