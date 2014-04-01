class Sighting < ActiveRecord::Base
  belongs_to :specie
  belongs_to :region
  validates :date, presence: true
  validates_format_of :date, with: /[0-9]{4}-[0-9]{2}-[0-9]{2}/
end
