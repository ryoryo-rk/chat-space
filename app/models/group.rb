class Group < ApplicationRecord
  has_many :users, through: :users_groups
  has_many :messages
  has_many :users_groups
  validates :name, presence: true
  def message_display
    if messages.present?
      if messages.last.content.present?
        messages.last.content
      else
        "画像が投稿されています。"
      end
    else
      "メッセージはありません。"
    end
  end
end
