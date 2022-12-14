require 'json_parser'

module Main
  module Config
    module_function

    @default = JsonParser.new File.join(ROOT, 'config/default.json')
    @default.on :destination, "cs"
    @default.on :source, "auto"

    def destination
      @default.parse :destination
    end

    def source
      @default.parse :source
    end
  end
end