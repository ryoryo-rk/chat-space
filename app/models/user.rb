class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, null: false
  has_many :groups, through: :users_groups
  has_many :messages
  has_many :users_groups

  scope :name_search,->(current_user,keyword){ where('name LIKE(?)',"%#{keyword}%").where.not( id: current_user )}
end
