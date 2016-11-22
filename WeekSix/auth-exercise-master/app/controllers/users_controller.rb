class UsersController < ApplicationController

  # renders the home page
def home
  verify_account
  # @current_user = User.find_by(id: session[:user_id])

  # if @current_user == nil
  #   @name = "Ironhacker"
  # else
  # @name = @current_user.username
end


  def index
    if session[:user_id]
    @users = User.all

    render :index

  else 
    redirect_to "/login"
  end
  end

  # renders the signup form
  def new
    if session[:user_id]
      redirect_to "/"
    else
    render :new
    end
  end

  def show
      if session[:user_id]

      verify_account
       

      render :show
    else
      redirect_to "/login"
    end
  end

  # receives form and creates a user from that data
  def create
    user = User.new(user_params)
    if user.save
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end   

  private

  def user_params
     params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

  def user_logged_in?

    if session[:user_id]
      true
    else
      false
    end

  end

end









