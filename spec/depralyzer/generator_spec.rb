# frozen_string_literal: true

require 'spec_helper'
require 'depralyzer/generator'
require 'pp'

RSpec.describe Depralyzer::Generator do

  let(:generator) { described_class.new('samples/deprecations.log') }

  describe '#process' do
    it 'processes the deprecations' do
      result = generator.process

      expect(result).not_to be_nil
    end
  end

end
