# frozen_string_literal: true

require 'spec_helper'
require 'depralyzer/version'

RSpec.describe Depralyzer do

  describe Depralyzer::VERSION do
    it 'exists' do
      expect(Depralyzer::VERSION).not_to be_nil
    end
  end

end
