module BlackPotion
  class TVMLScreen
    attr_accessor :base_url, :app_url, :delegate

    def initialize(args = {})
      @base_url = args[:base_url]
      @app_url = args[:app_url]
      @delegate = args[:delegate]
    end

    def app_controller
      @app_controller ||= begin
        context = TVApplicationControllerContext.alloc.init
        context.javaScriptApplicationURL = NSURL.URLWithString(app_url)
        context.launchOptions = { "BASEURL" => base_url }
        TVApplicationController.alloc.initWithContext(context, window: delegate.window, delegate: delegate)
      end
    end
  end
end
