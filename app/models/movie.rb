class Movie < ApplicationRecord
  has_many :bookmarks
  # validation

  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
  # validates :rating, presence: true, inclusion: { in: 0..5 }, numericality: { only_integer: true }
end
