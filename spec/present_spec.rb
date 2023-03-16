require 'present'

RSpec.describe Present do
  it "Succesfully wrapping and unwrapping contents" do
    present = Present.new
    present.wrap("Cleo")
    expect(present.unwrap).to eq "Cleo"
  end
end

  RSpec.describe Present do
  it "Fails if wrapping we've already wrapped" do
    present = Present.new
    present.wrap("Jay")
    expect { present.wrap("Cat") }.to raise_error "A contents has already been wrapped."
  end
end

RSpec.describe Present do
it "Fails if wrapping we've already wrapped" do
    present = Present.new
    present.wrap("Bubba")
    expect { present.wrap("Bubba") }.to raise_error "A contents has already been wrapped."
  end
end

RSpec.describe Present do
  it "Fails if unwrap without wrapping" do
    present = Present.new
    expect { present.unwrap }.to raise_error "No contents have been wrapped." 
  end
end