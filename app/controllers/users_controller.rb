class UsersController < ApplicationController

  def edit
  	@user = User.find(params[:id])
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      edit_user_session_path

  end

  private
  def user_params
  	params.require(:user).permit(:name, :email)
  end

end
