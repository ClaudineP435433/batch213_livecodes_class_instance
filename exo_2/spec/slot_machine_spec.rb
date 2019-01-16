require_relative '../slot_machine'

def test_scenario(reels, expected_score)
  it "returns #{expected_score} for #{reels[0]}/#{reels[1]}/#{reels[2]}" do
    slot_machine = SlotMachine.new
    score = slot_machine.score(reels)
    expect(score).to eq(expected_score)
  end
end

describe SlotMachine do
  it "should return 40 if 3 stars" do
    slot_machine = SlotMachine.new
    score = slot_machine.score(["star", "star", "star"])
    expect(score).to eq(40)
  end

  it "should return 20 if 2 stars & 1 joker" do
    slot_machine = SlotMachine.new
    score = slot_machine.score(["star", "star", "joker"])
    expect(score).to eq(20)
  end

  it "should return 0 if 3 different items" do
    slot_machine = SlotMachine.new
    score = slot_machine.score(["star", "joker", "bell"])
    expect(score).to eq(0)
  end

  it "should return 25 if 2 jokers and smthg else" do
    slot_machine = SlotMachine.new
    score = slot_machine.score(["joker", "joker", "bell"])
    expect(score).to eq(25)
  end

  test_scenario(%w[joker joker joker], 50)
  test_scenario(%w[seven seven seven], 20)
  test_scenario(%w[cherry cherry cherry], 10)

  test_scenario(%w[joker joker star], 25)
  test_scenario(%w[joker joker bell], 25)
  test_scenario(%w[joker joker seven], 25)
  test_scenario(%w[joker joker cherry], 25)

  test_scenario(%w[star star joker], 20)
  test_scenario(%w[bell bell joker], 15)
  test_scenario(%w[seven seven joker], 10)
  test_scenario(%w[cherry cherry joker], 5)
end
