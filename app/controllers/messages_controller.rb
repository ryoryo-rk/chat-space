class MessagesController < ApplicationController

  def index
  	@user = current_user
  	@groups = current_user.groups
  end

end
