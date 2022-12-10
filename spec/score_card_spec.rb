require 'score_card'
require 'frame'

describe ScoreCard do
  it "initializes a new score card" do
    score_card = ScoreCard.new
    
    expect(score_card).to be_instance_of(ScoreCard)
    expect(score_card.frames).to eq([])
  end
  it "generates a new frame" do
    score_card = ScoreCard.new

    expect(score_card.new_frame(1)).to be_instance_of(Frame)
  end
  context "total score" do
    it "returns a total score" do
      score_card = ScoreCard.new
  
      expect(score_card.total_score).to eq 0
    end
    it "keeps track of the score by adding a number" do
      score_card = ScoreCard.new
      score_card.add_to_total(5)
      expect(score_card.total_score).to eq 5
    end
    it "keeps track of the score by adding multiple numbers" do
      score_card = ScoreCard.new
      score_card.add_to_total(5)
      expect(score_card.total_score).to eq 5
      score_card.add_to_total(3)
      expect(score_card.total_score).to eq 8
      score_card.add_to_total(4)
      expect(score_card.total_score).to eq 12
    end
  end
  it "ends the frame if the player gets 10 on the first roll" do
    score_card = ScoreCard.new
    score_card.play_frame(10, 1)
    
    expect(score_card.current_frame).to eq 2
  end
end


