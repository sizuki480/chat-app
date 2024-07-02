class UsersController < ApplicationController

  def edit
  end

  def update
    if  current_user.update(user_params)    #現在のユーザーの情報を更新（user_paramsから取得）
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end


  private

  def user_params   #ストロングパラメーターの定義
    params.requier(:user).permit(:name, :email)   #userデータベースの name emailカラムのみ使用
  end
end