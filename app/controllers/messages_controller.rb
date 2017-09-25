class MessagesController < ApplicationController

  before_action :set_group, only: [:index, :create]

  def index
    @groups = current_user.groups
    @message = Message.new
    @messages = @group.messages.order('created_at ASC')
    respond_to do |format|
      format.html
      format.json{ @new_message = @group.messages.where('id > ?', params[:id])}
    end
  end

  def new
  	@message = Message.new
  end

  def create
    @message = Message.new(message_params)
    @message.save
  	respond_to do |format|
      format.html { redirect_to group_messages_path(@group.id) }
      format.json
    end
  end

  private
  def message_params
  	params.require(:message).permit(:content, :image).merge(group_id: params[:group_id], user_id: current_user.id)
  end

  def set_group
  	@group = Group.find(params[:group_id])
  end
end
