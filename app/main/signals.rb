module Main
  module Signals
    module_function
    Signal.trap 'INT' do
      puts
      exit
    end
  end
end
