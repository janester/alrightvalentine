class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(params[:user])
  end

  def show
    @user = User.find(params[:id])
    @ed_levels = ["High School", "Associate's Degree", "Bachelor's Degree", "Master's Degree", "PhD"]
  end

  def edit
    @ed_levels = ["High School", "Associate's Degree", "Bachelor's Degree", "Master's Degree", "PhD"]
    @user = User.find(params[:id])
  end



  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
    redirect_to(user_path(@user))
  end
end
