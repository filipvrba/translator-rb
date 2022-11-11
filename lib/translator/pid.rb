module Translator
  module PID
    module_function

    def exist
      %x(pgrep -f #{Constants::APP_NAME})
    end

    def running?
      pid = Process.pid
      pid_term = PID.exist()

      if pid != pid_term.to_i
        return true
      end

      return false
    end
  end
end