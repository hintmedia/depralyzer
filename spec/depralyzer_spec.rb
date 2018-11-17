# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Depralyzer do

  describe '#process' do
    it 'works' do
      file_path = 'samples/deprecation.log'

      described_class.process(file_path)
    end
  end

  describe '.version' do
    it 'version' do
      result = described_class.version

      expect(result).not_to be_nil
    end
  end
end
