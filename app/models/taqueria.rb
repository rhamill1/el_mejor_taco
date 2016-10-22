class Taqueria < ApplicationRecord
  belongs_to :region
  has_many :tacos
end
