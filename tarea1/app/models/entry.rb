class Entry < ApplicationRecord
  has_many :comments
  belongs_to :user
  validates_length_of :bajada, maximum: 200
end
