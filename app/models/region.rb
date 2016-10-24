class Region < ApplicationRecord
  validates :region_name, presence: true, uniqueness: true

  has_many :taquerias
end
