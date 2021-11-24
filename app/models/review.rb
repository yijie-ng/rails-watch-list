class Review < ApplicationRecord
  belongs_to :list

  validates :comment, :rating, presence: true
  validates :rating, inclusion: { in: %w[0 1 2 3 4 5] }
end