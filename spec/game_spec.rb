require 'game'
describe Game do
    describe '#attack' do
        let(:player) { double :player }
        it 'damages the player' do
            expect(player).to receive(:damage)
            subject.attack(player)
        end
    end
end