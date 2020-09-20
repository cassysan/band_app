class Album < ApplicationRecord
  belongs_to :band
  has_many :songs
  validates :name, presence: true
end
