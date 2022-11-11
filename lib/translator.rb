require 'translator/constants'
require 'translator/version'
require 'translator/pid'

module Translator
  module_function
  def get_sel_text
    %x(xsel)
  end

  def get_trans_text(dest, src, text)
    system("translate -d #{dest} -s #{src} '#{text}'")
  end

  def open_new
    path_fa = File.join(ROOT, 'bin', Constants::APP_NAME)
    system("x-terminal-emulator -t 'Command Line' -e #{path_fa}")
  end
end