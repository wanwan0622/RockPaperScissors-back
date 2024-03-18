class Partner < ApplicationRecord
  validates :name, presence: true, length: { maximum: 10 }
  belong_to :user
end
