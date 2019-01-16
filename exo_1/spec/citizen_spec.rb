require_relative "../citizen"

describe Citizen do
  it "return Georges age" do
    georges = Citizen.new("Georges", "Dupuis", 50)
    expect(georges.age).to eq(50)
  end

  it "return true if georges has more than 18 years old" do
    georges = Citizen.new("Georges", "Dupuis", 50)
    expect(georges.can_vote?).to eq(true)
  end

  it "return false if georges has less than 18 years old" do
    georges = Citizen.new("Georges", "Dupuis", 12)
    expect(georges.can_vote?).to eq(false)
  end
end
