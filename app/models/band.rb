class Band < ApplicationRecord
  has_many :albums
  has_many :songs, through: :album
  validates :name, presence: true
end
