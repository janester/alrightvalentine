class SessionController < ApplicationController
  def new
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user.present? && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      @user.sign_ins += 1
      @user.save
    end
    logged_in
  end

  def destroy
    session[:user_id] = nil
    logged_in
    redirect_to(root_path)
  end
end
