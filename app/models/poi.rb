class Poi < ApplicationRecord
  validates :name, presence: true
  validates :x, presence: true, numericality: { only_integer: true , greater_than: 0}
  validates :y, presence: true, numericality: { only_integer: true , greater_than: 0}
  STUFF = "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
  # asdhfiaushdfiuahsfi ashifd uahifu haiufh iuash fiuha siuhf iuash fiuh asdudhiasiduf hias hdsh iuh iduais dfiahiduf hihd iifdasfs
  def coords
    {x: x, y: y}
  end
end
