class Point3D < Point
  def initialize(x, y, z)
    super(x, y)
    @z = z
  end
end

point = Point.new(1, 1)
point_3d = Point3D.new(1, 1)
