class Point3D < Point
  def initialize(x, y, z)
    super(x, y)
    @z = z
  end

  def to_s
    "#{@x}, #{@y}, #{@z}"
  end
end

point = Point.new(1, 1)
point_3d = Point3D.new(1, 1)
point_3d.to_s


class A
  constants TEST = '111'
  @@value = 1
  def A.value
    @@value
  end

  def self.print_constant
    print TEST
  end
end

class B < A
  constants TEST = 'aaaaaaaaa'
  @@value = 2
  def self.print_constant
    super
    print TEST
  end
end

class C < A
  @@value =3
end


