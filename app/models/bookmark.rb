class Bookmark < ApplicationRecord

  validates :comment, length: { minimum: 6 }
  validates_uniqueness_of :list, scope: :movie
  belongs_to :movie
  belongs_to :list
end
