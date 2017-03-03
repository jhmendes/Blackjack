require "spec_helper"

RSpec.describe Deck do
  let(:my_deck) { Deck.new }
  let(:new_deck) { Deck.new }

    it "returns a new shuffled deck" do
      expect(my_deck).to be_a(Deck)
    end

    it "creates unique cards" do
      expect(my_deck.deck.uniq.size).to eq 52
    end

    it "shuffles the deck" do
      expect(my_deck.deck).to eq my_deck.deck.shuffle!
    end

    describe "#deal" do
      it "deals the correct number of cards" do
        new_deck.deal(2)
        expect(new_deck.deck.size).to eq(50)
      end

      it "deals the top card of the deck" do
        top_card = my_deck.deck[-1]
        expect(my_deck.deal(1)).to eq [top_card]
      end
    end
end
