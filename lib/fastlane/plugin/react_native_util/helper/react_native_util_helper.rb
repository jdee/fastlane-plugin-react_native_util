require 'fastlane_core/ui/ui'

module Fastlane
  UI = FastlaneCore::UI unless Fastlane.const_defined?("UI")

  module Helper
    class ReactNativeUtilHelper
      # class methods that you define here become available in your action
      # as `Helper::ReactNativeUtilHelper.your_method`
      #
      def self.show_message
        UI.message("Hello from the react_native_util plugin helper!")
      end
    end
  end
end
