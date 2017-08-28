class Poi < ApplicationRecord
  validates :name, presence: true
  validates :x, presence: true, numericality: { only_integer: true , greater_than: 0}
  validates :y, presence: true, numericality: { only_integer: true , greater_than: 0}

  def coords
    {x: x, y: y}
  end
  
end
