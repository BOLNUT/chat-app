class UsersController < ApplicationController

  def edit
    #@users = User.find(params[:id])  
  end

  def update
    if current_user.update(user_params) #もしユーザーの更新ができたら
      redirect_to root_path #redirect_toでトップページへ
    else
      render :edit #更新できない場合はeditのビューにいく
    end
  end
  
  
  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
