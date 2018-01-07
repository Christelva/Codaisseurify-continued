class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy

  validates :name, presence: true

  validates :bio, length: { maximum: 600 }

  has_many :photos, dependent: :destroy
end
