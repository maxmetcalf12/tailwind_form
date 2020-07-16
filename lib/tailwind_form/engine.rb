# frozen_string_literal: true

require 'rails/railtie'

module TailwindForm
  class Engine < Rails::Engine
    config.eager_load_namespaces << TailwindForm
    config.autoload_paths << File.expand_path('lib', __dir__)
  end
end
