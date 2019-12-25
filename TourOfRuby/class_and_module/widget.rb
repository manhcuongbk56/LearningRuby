class Widget
  def x
    @x
  end
  protected :x

  def utility_method
    puts 'This is private utility method'
    nil
  end
  private :utility_method
end
w = Widget.new
w.send :utility_method
w.instance_eval('utility_method')