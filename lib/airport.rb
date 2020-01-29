class Airport
  MAXIMUM_CAPACITY = 1
  attr_reader :planes

  def initialize(capacity = MAXIMUM_CAPACITY)
    @capacity = capacity
    @planes = []
  end

  def land(plane)
    if @planes.include?(plane)
      raise 'Plane already landed!'
    elsif @planes.size >= @capacity 
      raise 'Airport already at capacity!'
    else
      @planes << plane
    end
  end

  def take_off(_plane)
    if @planes != []
      @planes.pop
    else
      raise 'No planes available'
    end
  end
end
