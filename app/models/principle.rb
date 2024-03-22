class Principle < ApplicationRecord
  validates :principle_first, presence: true, length: { maximum: 35 }
  validates :principle_second, presence: true, length: { maximum: 35 }
  validates :principle_third, presence: true, length: { maximum: 35 }
  validates :principle_fourth, length: { maximum: 35 }
  validates :principle_fifth, length: { maximum: 35 }
  validates :principle_sixth, length: { maximum: 35 }
  validates :principle_seventh, length: { maximum: 35 }
  validates :principle_eighth, length: { maximum: 35 }
  validates :principle_ninth, length: { maximum: 35 }
  validates :principle_tenth, length: { maximum: 35 }

  validates :id_first, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 10}
  validates :why_first, presence: true, length: { maximum: 100 }
  validates :how_first, presence: true, length: { maximum: 100 }
  validates :when_first, length: { maximum: 100 }
  validates :situation_first, length: { maximum: 100 }
  validates :where_first, length: { maximum: 100 }
  validates :who_first, length: { maximum: 100 }
  validates :what_first, length: { maximum: 100 }
  validates :other_first, length: { maximum: 100 }

  validates :id_second, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 10}
  validates :why_second, presence: true, length: { maximum: 100 }
  validates :how_second, presence: true, length: { maximum: 100 }
  validates :when_second, length: { maximum: 100 }
  validates :situation_second, length: { maximum: 100 }
  validates :where_second, length: { maximum: 100 }
  validates :who_second, length: { maximum: 100 }
  validates :what_second, length: { maximum: 100 }
  validates :other_second, length: { maximum: 100 }

  validates :id_third, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 10}
  validates :why_third, presence: true, length: { maximum: 100 }
  validates :how_third, presence: true, length: { maximum: 100 }
  validates :when_third, length: { maximum: 100 }
  validates :situation_third, length: { maximum: 100 }
  validates :where_third, length: { maximum: 100 }
  validates :who_third, length: { maximum: 100 }
  validates :what_third, length: { maximum: 100 }
  validates :other_third, length: { maximum: 100 }

  belongs_to :user
  belongs_to :partner
end
