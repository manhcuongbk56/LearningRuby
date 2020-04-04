class Season
  NAMES = %w{ Spring Summer Autumn Winter} # Array of season names
  INSTANCES = [] # Array pf Season objects


  def initialize(n) # The state of a season is just its
    @n = n # index in the NAMES and INSTANCE arrays
  end

  def to_s
    NAMES[@n]
  end

  # this code create instance of class to represent the seasons
  # and define the constant to refer to those instances.
  # Note that we must do this after initialize is defined.
  NAMES.each_with_index do |name, index|
    instance = new(index)       # Create a new instance
    INSTANCES[index] = instance
    const_set name, instance
  end

  private_class_method :new, :allocate
  private :dup, :clone

end