class MessagesController < ApplicationController

  def index
  	@user = current_user
  	@groups = current_user.groups
  	@group = Group.find(params[:group_id])

  end

  def create
  end

end
