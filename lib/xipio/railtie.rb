module Xipio
  class Railtie < ::Rails::Railtie
    initializer 'xipio' do |app|
      app.config.middleware.insert(0, Middleware)
    end
  end
end
