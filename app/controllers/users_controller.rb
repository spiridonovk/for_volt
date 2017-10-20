class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
    if @user.token.nil?
      @user.token=generate_token
      @user.save
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to action: 'show'
  end

  def user_params
    params.require(:user).permit(:avatar, :email, :nickname, :password)
  end

  private
  def generate_token
    loop do
      token = SecureRandom.hex
      return token unless User.exists?({token: token})
    end
  end

end
