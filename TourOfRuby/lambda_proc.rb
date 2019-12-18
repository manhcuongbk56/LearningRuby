def multiplier(n)
  lambda {|data| data.collect { |x| x*n }}
end


doubler = multiplier (2)


def accessor_pair(initial_value=nil)
  value =initial_value
  getter = lambda {value}
  setter = lambda {|x| value = x}
  return getter, setter
end

getX, setX = accessor_pair (0)

def multiplier(n)
  lambda {|data| data.collect { |x| x*n }}
end

doubler = multiplier(2)
puts doubler.call([1, 2, 3])
