require 'rspec'
require_relative 'dog'

RSpec.describe Dog do

  describe '#bark' do
    it 'Return the "Woof!"' do
      expect(subject.bark).to eql('Woof!')
    end
  end

  describe '#feed' do
    context 'When the dog is hungry' do
      subject {described_class.new(hungry_level: 7)}

      it 'Is not longer hungry' do
        subject.feed
        expect(subject).to_not be_hungry
      end
    end
  end

  describe '#hungry?' do
    context 'when hungry_level is more than 5' do
      subject {described_class.new(hungry_level: 7)}

      it 'Return true ' do
        expect(subject).to be_hungry
      end
    end

    context 'When hungry_level is less than 5' do
      subject {described_class.new(hungry_level: 5)}

      it "Return false" do
        expect(subject).to_not be_hungry
      end
    end
  end
end
