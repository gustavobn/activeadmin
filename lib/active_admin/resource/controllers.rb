module ActiveAdmin
  class Resource
    module Controllers
      delegate :resources_configuration, to: :controller

      # Returns a properly formatted controller name for this
      # config within its namespace
      def controller_name
        base = [namespace.module_name, resource_name.plural.camelize + "Controller"]
        base.unshift(namespace.application.engine.parent.to_s) if namespace.application.engine.present?
        base.compact.join('::')
      end

      # Returns the controller for this config
      def controller
        @controller ||= controller_name.constantize
      end

    end
  end
end
