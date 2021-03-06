require 'fastlane/action'
require 'react_native_util'
require_relative '../helper/react_native_util_helper'

module Fastlane
  module Actions
    class ReactPodAction < Action
      def self.run(params)
        UI.message "Running in #{params[:chdir]}"
        Dir.chdir params[:chdir] do
          converter = ::ReactNativeUtil::Converter.new repo_update: params[:repo_update]

          begin
            if params[:update]
              converter.update_project!
            else
              converter.convert_to_react_pod!
            end
          rescue ::ReactNativeUtil::BaseException => e
            UI.user_error! e.message
          end
        end
      end

      def self.description
        "Community utilities for React Native projects"
      end

      def self.authors
        ["Jimmy Dee"]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.details
        # Optional:
        "more to come"
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :chdir,
                               description: 'Root of app project',
                                  optional: true,
                             default_value: '.',
                                      type: String),
          FastlaneCore::ConfigItem.new(key: :update,
                               description: 'Update a converted project',
                                  optional: true,
                             default_value: false,
                                 is_string: false),
          FastlaneCore::ConfigItem.new(key: :repo_update,
                                  env_name: 'REACT_NATIVE_UTIL_REPO_UPDATE',
                               description: 'Update local podspec repo',
                                  optional: true,
                             default_value: true,
                                 is_string: false)
        ]
      end

      def self.is_supported?(platform)
        platform == :ios
      end
    end
  end
end
