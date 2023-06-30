class Tweet < ApplicationRecord
  belongs_to :user

  # rails validations
  # si el del current_user y existe tweet
  validates :user, presence: true
  # si existe content
  validates :content, presence: true, length: { maximum: 280 }
end
