class Airport
  attr_reader :planes

  def initialize
    @planes = []
  end

  def land(plane)
    if @planes.include?(plane)
      raise 'Plane already landed!'
    elsif @planes.size >= 1
      raise 'Airport already at capacity!'
    else
    @planes << plane
    end
  end

  def take_off(plane)
    if @planes != []
      @planes.pop
    else
      raise 'No planes available'
    end
  end
end
