class SessionsController < ApplicationController

  def new
  end

  def create
  	admin = Admin.find_by(email: params[:session][:email])
  	if admin && admin.password == params[:session][:password]
  		session[admin.id] = admin.id
  		#redirect_to admin #I need to replace admin with the post create view or something
  	else
  		flash[:danger] = 'I told you to fuck off' # Not quite right!
  		render 'new'
  	end
  end

  def destroy
  end

end
