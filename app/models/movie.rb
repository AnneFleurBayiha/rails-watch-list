class Movie < ApplicationRecord
  has_many :bookmarks
  validates :title, uniqueness: true
  validates :title, presence: true
  validates :overview, presence: true
end


# A movie must have a unique title and an overview.
