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
  end



  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
    binding.pry
  end
end
