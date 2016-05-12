class AppDelegate < BP::Delegate
  def on_load(app, options)
    open BP::TVMLScreen.new({
      base_url: "http://localhost:9001/",
      app_url: "http://localhost:9001/js/application.js",
      delegate: self
    })
  end
end
