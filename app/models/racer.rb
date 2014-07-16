class Racer < ActiveRecord::Base
  validates :name, presence: true, length: {minimum: 4}
  validates :height, presence: true, numericality: true

  has_secure_password
end
