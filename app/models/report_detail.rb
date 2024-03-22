class ReportDetail < ApplicationRecord
  validates :content, presence: true

  belongs_to :report
end
