class MutablePoint
  def initialize(x, y)
    @x, @y = x, y
  end
  def x
    @x
  end
  def y
    @y
  end
  def x=(value)
    @x = value
  end

  def y=(value)
    @y = value
  end
end