require "translator"
require_relative "main/arguments"
require_relative 'main/signals'
require_relative 'main/config'
require_relative 'main/input'

module Main
  DEST = Config::destination
  SRC  = Config::source

  def self.translate
    sel_text = Translator.get_sel_text
    Translator.get_trans_text(DEST, SRC, sel_text)
  end

  def self.operation
    is_translated = translate()
    is_still_terminal = Translator::PID.running?
    Input.exit_app(is_translated, is_still_terminal)
  end

  unless Arguments.options[:terminal]
    operation()
  else
    Translator.open_new()
  end
end
