class Report < ApplicationRecord
  validates :title, presence: true

  belongs_to :user
  has_many :report_detail
  has_many :to_do
end
