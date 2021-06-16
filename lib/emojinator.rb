# frozen_string_literal: true

require_relative 'emojinator/version'
require_relative 'emojinator/constants'

module Emojinator
  def self.call(string)
    string.gsub(/(#{Constants::SWEAR_WORDS.join('|')})/i, Constants::EMOJI.sample)
  end
end
