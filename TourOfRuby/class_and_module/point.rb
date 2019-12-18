class Point
  attr_reader :x, :y
  def intialize(x, y)
    @x, @y = x, y
  end

  def +(other)
    Point.new(@x + other.x, @y + other.y)
  end

  def -@
    Point.new(-@x, -@y)
  end

  def -(other)
    Point.new(@x - other.x, @y - other.y)
  end

  def *(scalar)
    Point.new(@x*scalar, @y*scalar)
  end

  def [](index)
    case index
    when 0, -2
      @x
    when 1, -1
      @y
    when :x, "x"
      @x
    when :y, "y"
      @y
    else nil
    end
  end

  def each
    yield @x
    yield @y
  end

  def to_s
    "#{@x}:#{@y}"
  end

end

# the new method of the class object creates a new instance object, and then it
# automatically invokes the initialize method on that instance
p = Point.new(3, 4)
p.class
p.is_a? Point
puts p
