class GroupsController < ApplicationController

  before_action :find_group, only: [:edit, :update]

  def index
    @groups = current_user.groups
  end

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
    if @group.update(group_params)
      redirect_to :root, notice: "グループの編集を完了！"
    else
      render :edit
    end
  end

  private
  def group_params
    params.require(:group).permit(:name, user_ids: [])
  end

  def find_group
    @group = Group.find(params[:id])
  end

end
