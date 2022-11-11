require "option_parser"

module Main
  module Arguments
    module_function

    @options = {
      terminal: false
    }

    OptionParser.parse do |parser|
      parser.banner(
        "The chosen text will be translated into the language of origin. \n" +
        "Usage: #{Translator::Constants::APP_NAME} [options]\n" +
        "\nOptions:"
      )
      parser.on( "-h", "--help", "Show help" ) do
        puts parser
        exit
      end
      parser.on( "-v", "--version", "Show version" ) do
        puts "Version is #{Translator::VERSION}"
        exit
      end
      parser.on("-t", "--terminal", "Opens a new terminal for translation.") do
        @options[:terminal] = true
      end
    end

    def options
      @options
    end
  end
end