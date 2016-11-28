class UsersController < ApplicationController
before_action :user_logged_in?, only: [:show, :index]
before_action :check_if_admin, only: [:index]
before_action :verify_account, only: [:home, :show]
  # renders the home page
def home
 
  # @current_user = User.find_by(id: session[:user_id])

  # if @current_user == nil
  #   @name = "Ironhacker"
  # else
  # @name = @current_user.username
end


  def index

  
    @users = User.all

    render :index

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
      
      verify_account

      render :show
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


 

  

end









