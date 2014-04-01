class Specie < ActiveRecord::Base
  validates :name, presence: true
  validates_length_of :name, minimum: 2
  validates_format_of :name, with: /\A[A-Z\s]+\z/i
  has_many :sightings
end
