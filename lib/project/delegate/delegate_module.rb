module BlackPotion
  module DelegateModule
    include BlackPotion::Support

    attr_accessor :window, :appController

    def application(application, didFinishLaunchingWithOptions: launch_options)
      on_load(application, launch_options)
      true
    end

    def application(application, didFailWithError: error)
      try :on_fail, error
    end

    def application(application, didStopWithOptions: options)
      try :on_stop, options
    end

    def open(screen, args = {})
      self.window ||= UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
      if screen.is_a? TVMLScreen
        self.appController = screen.app_controller
      end
      screen
    end

  end
end
