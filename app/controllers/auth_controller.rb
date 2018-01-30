class AuthController < ApplicationController
  def create
    @graph = Koala::Facebook::API.new(request.params['token'])
    @user = User.from_facebook(@graph)
    if @user.persisted?
      @token = JWTAuth.encode(@user.uid)
      render :show
    else
      render json: { errors: ['Invalid Credentials'] }, status: 422
    end
  end

  def destroy
    reset_session
  end
end
