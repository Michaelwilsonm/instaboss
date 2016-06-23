class ClientController < ApplicationController
  before_action :authenticate_admin!

  def client
    @user = User.new
  end

  def create
    @user = User.create(create_user_params)
    if @user.save
      redirect_to admin_index_path
    else
      render client_client_path
    end
  end

  def all
    @user = User.all
  end

  def destroy
    @user = User.find_by(params[:id])
    @user.destroy!
    redirect_to client_all_path
  end

  private

    def create_user_params
        params.require(:user).permit(:email, :password)
    end
end