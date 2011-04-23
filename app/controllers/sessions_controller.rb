class SessionsController < ApplicationController
  def create
    #raise request.env["omniauth.auth"].to_yaml
    auth = request.env["omniauth.auth"]
    @user = User.find_by_provider_and_uid(auth["provider"],auth["uid"]) || User.create_with_omniauth(auth)
    c = User.load_config(@user)
    session[:user_id] = @user.id
    redirect_to root_url, :notice => "Signed in!"
  end
  
  def failure
    redirect_to root_path, :notice => "We were unable to log in at this time."
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Sign out!"
  end
  
end
