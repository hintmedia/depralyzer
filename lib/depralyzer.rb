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

  def self.analyze(file_path)
    generator = Depralyzer::Generator.new(spec_dir)
    generator.write_spec(file_path, force_write, dry_run)
  end
end
