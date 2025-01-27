require 'score_card'
require 'frame'
require 'game'

describe Game do
  it "starts a new game by constructing a new game" do
    my_game = Game.new

    expect(my_game).to be_instance_of(Game)
  end
  context "when a player has their turn"
  it "generates a random number between 0 and 10" do
    my_game = Game.new
    
    expect(my_game.random_num).to be_instance_of(Integer)
  end
  it "adds an initial score of n to score_card.score where random_num is n" do
    my_game = Game.new
    my_score = ScoreCard.new
    random_num = my_game.random_num
    expect(my_score.total_score).to eq random_num
  end
  it "on subsequent turns it adds n to a new score where random_num is n" do
    my_game = Game.new
    my_score = ScoreCard.new
    random_num1 = my_game.random_num
    random_num2 = my_game.random_num
    my_score.add_to_total(3)
    my_score.add_to_total(3)

    expect(my_score.total_score). to eq(6)
  end
end