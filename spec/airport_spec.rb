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
end
