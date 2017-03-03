require "spec_helper"


RSpec.describe Hand do
  let(:my_hand) { Hand.new([Card.new('7', '♠'), Card.new('5', '♠')]) }
  let(:other_hand) { Hand.new([Card.new('10', '♠'), Card.new('J', '♠')]) }
  let(:ace_hand) { Hand.new([Card.new('A', '♠'), Card.new('A', '♠')]) }
  let(:face_hand) { Hand.new([Card.new('Q', '♠'), Card.new('J', '♠')]) }

  it "returns a hand object that is an array filled with card objects" do
    expect(my_hand).to be_a(Hand)
  end

  it "each object in the array should be a card class" do
    expect(my_hand.cards[0]).to be_a(Card)
  end

  describe "#calculate_hand" do
    it "returns 12 when the values of the cards are 7 and 5" do
      expect(my_hand.calculate_hand).to eq(12)
    end

    it "returns 20 when the values of the cards are 10 and a face card" do
      expect(other_hand.calculate_hand).to eq(20)
    end

    it "returns 12 when both cards are an Ace card" do
      expect(ace_hand.calculate_hand).to eq(12)
    end

    it "returns 20 when both cards are a face card" do
      expect(face_hand.calculate_hand).to eq(20)
    end
  end
end
