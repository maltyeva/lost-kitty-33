class Pet < ApplicationRecord

  validates :location, :species, :color, presence: true

  validates :species, inclusion: { in: ["dog", "cat"]}

end
