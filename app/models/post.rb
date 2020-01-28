class Post < ApplicationRecord
  validates :message, presence: true
  validates :nickname, presence: true
  belongs_to :user
end