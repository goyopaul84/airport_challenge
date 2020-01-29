require 'airport'

describe Airport do
  it "lands a plane" do
    airport = Airport.new
    expect(subject).to respond_to(:land)
  end

  it "should remember the landed plane" do
    airport = Airport.new
    plane = Plane.new
    airport.land(plane)
    expect(airport.planes).to eq([plane])
  end

  it "should take-off removing it planes array" do
    airport = Airport.new
    plane = Plane.new
    airport.land(plane)
    airport.take_off(plane)
    expect(airport.planes).to_not eq([plane])
  end

  it "should block take-off when no plane present" do
    airport = Airport.new
    plane = Plane.new
    expect { airport.take_off(plane) }.to raise_error(an_instance_of(RuntimeError), 'No planes available')
  end

  it "should block a plane already on ground from landing again" do
    airport = Airport.new
    plane = Plane.new
    airport.land(plane)
    expect { airport.land(plane) }.to raise_error(an_instance_of(RuntimeError), 'Plane already landed!')
  end

  it "should enforce a capacity of 1, blocking further landings" do
    airport = Airport.new
    plane = Plane.new
    plane2 = Plane.new
    airport.land(plane)
    expect { airport.land(plane2) }.to raise_error(an_instance_of(RuntimeError), 'Airport already at capacity!')
  end

  it "should accept larger airports with larger capacities" do
    airport = Airport.new(2)
    plane = Plane.new
    plane2 = Plane.new
    plane3 = Plane.new
    airport.land(plane)
    airport.land(plane2)
    expect { airport.land(plane3) }.to raise_error(an_instance_of(RuntimeError), 'Airport already at capacity!')
  end
end
