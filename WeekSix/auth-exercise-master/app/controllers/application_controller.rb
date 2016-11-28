class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user


  def verify_account
     @current_user = User.find_by(id: session[:user_id])

    if @current_user == nil
      @name = "Ironhacker"
    else
    @name = @current_user.username
    end

  end

   def user_logged_in?

    if session[:user_id] == nil
      flash[:need_to_login_message] = "You need to login to see the profile again"
      redirect_to "/login"
    end

  end

  def check_if_admin

  	if @current_user == nil
  		verify_account
  	end

  	if @current_user && @current_user.role != "admin"
  		 flash[:admin_only] = "Only administrators can see this page"
      redirect_to "/"
  	end
  	
  end


  def current_user
  end  
end
