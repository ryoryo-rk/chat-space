class GroupsController < ApplicationController

  def new
    @group = Group.new
  end

  def create
  	@group = Group.new(group_params)
    if @group.save
      redirect_to :root, notice: "グループの作成に成功しました!"
    else
      render :new, alert: "入力は正しいですか？"
    end
  end

  def edit
  end

  def update
  end

  private
  def group_params
    params.require(:group).permit(:name, {user_ids: []})
  end

end