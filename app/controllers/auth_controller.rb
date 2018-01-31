class AuthController < ApplicationController
  def create
    @graph = Koala::Facebook::API.new(request.headers['Authorization'])
    @user = User.from_facebook(@graph)
    if @user.persisted?
      @token = JWTAuth.encode(@user.uid)
      render :show
    else
      render json: { errors: ['Invalid Credentials'] }, status: 422
    end
  end

  def show
    if current_user
      render 'users/show'
    else
      render json: { errors: ['No current users']}, status: 401
    end
  end
end
