require 'player'

describe Player do
    subject { described_class.new("Ms Jackson") }
    it "should return its name" do        
        expect(subject.name).to eq("Ms Jackson")
    end
end