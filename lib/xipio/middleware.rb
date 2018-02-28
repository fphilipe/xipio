module Xipio
  class Middleware
    def initialize(app)
      @app = app
    end

    def call(env)
      tld_length = /\.xip\.io(:\d{1,5})?\z/ =~ env['HTTP_HOST'] ? 6 : 1
      ActionDispatch::Http::URL.tld_length = tld_length
      @app.call(env)
    end
  end
end
