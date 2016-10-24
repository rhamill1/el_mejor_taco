class Taqueria < ApplicationRecord
  validates :taqueria_name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :title, presence: true
  validates :primary_img, presence: true
  validates :location, presence: true
  validates :region_id, presence: true, numericality: { only_integer: true }

  belongs_to :region
  has_many :tacos
end
