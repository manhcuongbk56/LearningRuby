class Ambiguous
  def x; 1; end

  def test
    puts x

    x = 0 if false

    puts x

    x = 2
    puts x
  end
end

chars = "hello world" .tap { |x| puts "original object: #{x.inspect}" }.each_char        .tap { |x| puts "each_char returns: #{x.inspect}" }.to_a             .tap { |x| puts "to_a returns: #{x.inspect}" }.map {|c| c.succ} .tap {|x| puts "map returns: #{x.inspect}"}.sort             .tap {|x| puts "sort returns: #{x.inspect}"}


def sequence(n, m, c)
  i = 0
  while i < n
    yield m * i + c
    i += 1
  end
  yield 100, 50
end


def factorial(n)
  raise "argument muse be > 0" if n < 1
  return 1 if n == 1

  n * factorial(n - 1)
end

def polar(x, y)
  return Math.hypot(y, x), Math.atan2(y, x)
end

message = "I'm a message"
# Singleton method, method of specific object
def message.print_me
  puts self
end

def +(other)
  self.concatenate(other)
end

def hello
  puts "Hello, I'm a first version"
end

alias first_version_hello hello

def hello
  puts "Hello, I'm a new version, below is first version"
  first_version_hello
end

def max(first, *rest)
  max = first
  rest.each { |x| max = x if x > max }
  max
end

def sequence(args)
  n = args[:n] || 0
  m = args[:m] || 1
  c = args[:c] || 0

  a = []
  n.times { |i| a << m*i + c }
  a
end

def sequence2(n, m, c)
  i = 0
  while i < n
    yield i * m + c
    yield m + c
    i += 1
  end
end

def sequence3(n, m, c, &b)
  i = 0
  while i < n
    b.call("Cuong")
    i += 1
  end
end

def max(first, *rest, &block)
  max = first
  rest.each { |x| max = x if x > max}
  block.call(max)
  max
end

words = ['and', 'but', 'car']

uppercase = words.map &:upcase

#Lambda
succ = ->(x){ x+1 }

succ.call 2

lambda { |*args| }.arity
#The == method only returns true if one Proc is a clone or duplicate of the other:

# Proc return
def proc_builder(message)
  Proc.new { puts message; return }
end

def test
  puts "entering method"
  p = proc_builder("entering proc")
  p.call
  puts "exiting method"
end