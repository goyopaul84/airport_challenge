class Airport
  attr_reader :planes

  def initialize
    @planes = []
  end

  def land(plane)
    @planes << plane
  end

  def take_off(plane)
    if @planes != []
      @planes.pop
    else
      raise 'No planes available'
    end
  end
end
