require 'player'

describe Player do
    subject { described_class.new("Ms Jackson") }
    let(:other_player) { described_class.new("Godzilla") }
    it "should return its name" do
        expect(subject.name).to eq("Ms Jackson")
    end
    describe '#initialize' do
      it "should have #{Player::STARTING_HP} HP" do
        expect(subject.hp).to eq(Player::STARTING_HP)
      end
    end

    describe '#attack' do
      it "should reduce other_player's hp by 10" do
        expect { subject.attack(other_player) }.to change { other_player.hp }.by(-10)
      end
    end
end
