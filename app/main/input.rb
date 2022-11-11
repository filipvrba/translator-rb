module Main
  module Input
    module_function

    def exit_app is_access, is_fork
      if is_access and is_fork
        $stdin.gets
      else
        exit
      end
    end
  end
end