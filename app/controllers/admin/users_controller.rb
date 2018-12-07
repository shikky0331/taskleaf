class Admin::UsersController < ApplicationController
  def new
    @user=User.new
  end

  def create
    @user=User.new(user_params)

    if @user.save
      redirect_to admin_users_path,noticd: "ユーザー「#{@user.name}」を登録しました。"
    else
      render :new
    end
  end

  def edit
  end

  def show
  end

  def index
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :adomin, :password, :password_confirmation)
    end
end
