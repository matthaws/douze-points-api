class UsersController < ApplicationController
  def show
    @user = User.includes(:scoresheets).find(params[:id])
  end
end
