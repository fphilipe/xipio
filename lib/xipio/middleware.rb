module Xipio
  class Middleware
    def initialize(app)
      @app = app
    end

    def call(env)
      tld_length = env['HTTP_HOST'].match(/\.xip\.io(:[0-9]{,5})?\z/) ? 6 : 1
      ActionDispatch::Http::URL.tld_length = tld_length
      @app.call(env)
    end
  end
end
