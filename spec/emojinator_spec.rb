# frozen_string_literal: true

RSpec.describe Emojinator do
  it 'has a version number' do
    expect(described_class::VERSION).not_to be nil
  end

  context 'when text contains swear words' do
    let(:text) { described_class::Constants::SWEAR_WORDS.join(' ') }

    it 'replaces swear words' do
      expect(described_class.call(text)).not_to include(*described_class::Constants::SWEAR_WORDS)
    end
  end

  context 'when text does not contain swear words' do
    let(:text) { FFaker::Lorem.sentence }

    it 'does nothing' do
      expect(described_class.call(text)).to eq(text)
    end
  end
end
