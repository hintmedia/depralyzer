# frozen_string_literal: true

require 'depralyzer/version'

#
# Depralyzer Facade
#
module Depralyzer
  class << self

    def version
      VERSION
    end
  end

  def self.process(file_path)
    generator = Depralyzer::Generator.new(file_path)
    generator.process
  end
end
