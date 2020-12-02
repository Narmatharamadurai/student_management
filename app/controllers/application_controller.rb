class ApplicationController < ActionController::Base
  before_action :authenticate!
 
  def authenticate!
  	if(session[:user_id] && (session[:role] == 'Admin' or session[:role] == 'Agent'))
  		return true
  	else
  	  flash[:notice] ='Unauthorized to access this URL. Please Login again'
      redirect_to '/login'
  	end
  end
end
