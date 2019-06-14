require 'player'

describe Player do
    subject { described_class.new("Ms Jackson") }
    it "should return its name" do
        expect(subject.name).to eq("Ms Jackson")
    end
    describe '#initialize' do
      it "should have #{Player::STARTING_HP} HP" do
        expect(subject.hp).to eq(Player::STARTING_HP)
      end
    end

    describe '#damage' do
      it "should reduce player's hp by 10" do
        expect { subject.damage }.to change { subject.hp }.by(-10)
      end
    end
end
