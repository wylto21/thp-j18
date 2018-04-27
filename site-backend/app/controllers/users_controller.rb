class UsersController < ApplicationController
  def new
  end

  def create
  	@username = params["username"]
  	@bio = params["bio"]

  	user = User.create(username: "#{@username}", bio: "#{@bio}")
    user
    if user.errors.messages[:username] == []
      redirect_to show_path(user[:username])
    else
      redirect_to error_path
      @@error_message = user.errors.messages[:username]
    end
  end

  def show
    user = User.find_by(username: params[:username])
    @username = user[:username]
    @bio = user[:bio]
  end

  def error
  @err_msg = @@error_message[0]    
  end
end
