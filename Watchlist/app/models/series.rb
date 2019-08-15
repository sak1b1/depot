class Series < ApplicationRecord
  validates :season, presence: true, numericality: { greater_than_or_equal_to: 1 }
  validates :episode, presence: true, numericality: { greater_than_or_equal_to: 1 }
end
