return unless defined?(Rails)

module PublishingPlatformNokodiff
  class Engine < ::Rails::Engine
    isolate_namespace PublishingPlatformNokodiff
  end
end
