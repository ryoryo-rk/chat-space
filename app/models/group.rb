class Group < ApplicationRecord
  validates :name, presence: true
  has_many :users, through: :users_group
  has_many :messages
  has_many :users_groups
end