require "spec_helper"

RSpec.describe Card do
  let(:my_card) { Card.new('5', '♠')}
  let(:face_card) { Card.new('K', '♠') }
  let(:num_card) { Card.new('7', '♠')}
  let(:ace_card) { Card.new('A', '♠')}

  it "returns a card object with a rank and suit" do
    expect(my_card).to be_a(Card)
  end

  describe "#display" do
    it "returns a string representation of the rank and suit" do
      expect(my_card.display).to eq("5♠")
    end
  end

  describe "#card_type?" do
    it "returns Its a Face Card! if the card is a face card"  do
      expect(face_card.card_type?).to eq("Its a Face Card!")
    end

    it "returns Its a Number Card! if the card is a number card" do
      expect(num_card.card_type?).to eq("Its a Number Card!")
    end

    it "returns Its an Ace! if the card is an ace" do
      expect(ace_card.card_type?).to eq("Its an Ace!")
    end
  end
end
