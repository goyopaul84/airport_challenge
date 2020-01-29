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
end
