module Calculator
  def self.distance(coord1, coord2)
    Math.sqrt( (coord1[:x].to_i - coord2[:x].to_i) ** 2 + (coord1[:y].to_i - coord2[:y].to_i) ** 2).round(5)
  end

  def self.by_proximity(x:, y:, max:, list:)
    distances = list.map do |p|
      {id: p.id, name: p.name, distance: distance(p.coords, {x: x, y: y})}
    end
    near = distances.reject { |e| e[:distance] > max}
    near.map { |e| {id: e[:id], name: e[:name]} }
  end
end
