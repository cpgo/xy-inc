module Calculator
  def self.distance(coord1, coord2)
    Math.sqrt( (coord1[:x] - coord2[:x]) ** 2 + (coord1[:y] - coord2[:y]) ** 2).round(5)
  end

  def self.by_proximity(x:, y:, max:, list:)
    distances = list.map do |p|
      {id: p.id, name: p.name, distance: distance(p.coords, {x: x, y: y})}
    end
    near = distances.reject { |e| e[:distance] > 10}
    near.map { |e| {id: e[:id], name: e[:name]} }
  end
end
