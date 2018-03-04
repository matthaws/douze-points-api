require "base64"
class AuthController < ApplicationController
  def create
    code = Base64.decode64(request.headers['Authorization'].split(" ")[1])
    @graph = Koala::Facebook::API.new(code)
    @user = User.from_facebook(@graph)
    if @user.persisted?
      @countries = []
      @token = JWTAuth.encode(@user.uid)
      render :show
    else
      render json: { errors: ['Invalid Credentials'] }, status: 422
    end
  end

  def show
    @user = current_user
    @countries = Country.all
    render :show
  end
end
