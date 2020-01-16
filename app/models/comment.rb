class Comment < ApplicationRecord
  validates :text,presence: true
  belong_to :user
  belong_to :message
end
