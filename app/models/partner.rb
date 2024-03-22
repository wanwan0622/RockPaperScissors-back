class Partner < ApplicationRecord
  validates :name, presence: true, length: { maximum: 10 }
  belongs_to :user
  has_one :principle
end
