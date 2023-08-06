class Gossip < ApplicationRecord
  validates :title, presence: true, length: { minimum: 3, maximum: 14 }
  validates :content, presence: true, length: { minimum: 10 }
  validates :user, presence: true

  belongs_to :user
  has_many :gossip_tags
  has_many :tags, through: :gossip_tags
end
