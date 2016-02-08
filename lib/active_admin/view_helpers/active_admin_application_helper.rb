module ActiveAdmin
  module ViewHelpers
    module ActiveAdminApplicationHelper

      # Returns the current Active Admin application instance
      def active_admin_application
        byebug
        ActiveAdmin.application
      end

      def active_admin_engine(name)
        active_admin_application.namespaces[name.to_sym].engine
      end
    end
  end
end
