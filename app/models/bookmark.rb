class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  # validation
  validates :comment, length: { minimum: 6 }
  validates :movie, uniqueness: { scope: [:list] }
  validates_associated :list, :movie
end
