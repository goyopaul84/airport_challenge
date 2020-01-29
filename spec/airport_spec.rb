require 'airport'

describe Airport do
  it "lands a plane" do
    airport = Airport.new
    expect(subject).to respond_to(:land)
  end
end
