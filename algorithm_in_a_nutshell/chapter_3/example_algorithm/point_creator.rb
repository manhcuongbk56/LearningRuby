class PointCreator
  def create_random_points(num_point, from=0, to=100)
    points = []
    num_point.times {points.push(Point.new(rand(from..to), rand(from..to)))}
    points
  end
end