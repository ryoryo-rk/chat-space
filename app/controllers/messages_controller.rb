class MessagesController < ApplicationController

  before_action :set_group, only: [:index, :create]

  def index
  	@groups = current_user.groups
  	@message = Message.new
  end

  def new
  	@message = Message.new
  end

  def create
  	@message = Message.new(message_params)
  	if @message.save
  	  flash.now[:notice] = "送信しました"
  	  redirect_to group_messages_path(@group.id)
  	else
  	  flash.now[:alert] = "画像かメッセージを入力してください"
  	  render :index
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