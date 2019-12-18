class Point
  include Enumerable
  include Comparable
  attr_reader :x, :y
  @@n = 0
  @@total_x = 0
  @@total_y = 0
  def intialize(x, y)
    @x, @y = x, y
    @@n += 1
    @@total_x += x
    @@total_y += y
  end

  ORIGIN = Point.new(0, 0)
  UNIT_X = Point.new(1, 0)
  UNIT_Y = Point.new(0, 1)

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

  def ==(o)
    if o.is_a? Point
      @x==o.x && @y==o.y
    end
    false
  end

  def hash
    code = 17
    code = 37*code + @x.hash
    code = 37*code + @y.hash
    # Add lines like this for each significant instance variable
    code
  end

  def <=>(other)
    return nil unless other.instance_of? Point
    @x**2 + @y**2 <=> other.x**2 + other.y**2
  end

  def self.sum(*points)
    x = y = 0
    points.each {|p| x += p.x; y += p.y}
    Point.new(x, y)
  end
  class << self
    def report
      puts "Number of points: #{@@n}"
      puts "Average X coordinate: #{@@total_x.to_f/@@n}"
      puts "Average Y coordinate: #{@@total_y.to_f/@@n}"
    end
  end
end

# the new method of the class object creates a new instance object, and then it
# automatically invokes the initialize method on that instance
p = Point.new(3, 4)
p.class
p.is_a? Point
puts p

