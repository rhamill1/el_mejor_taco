class Taco < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :image, presence: true
  validates :taqueria_id, presence: true, numericality: { only_integer: true }

  belongs_to :taqueria
end
