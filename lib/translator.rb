require 'translator/signals'
require 'translator/config'

module Translator
  module_function
  DEST = Config::destination
  SRC  = Config::source

  def get_sel_text
    %x(xsel)
  end

  is_access = system("translate -d #{DEST} -s #{SRC} '#{get_sel_text()}'")
  if is_access
    gets
  else
    exit
  end
end