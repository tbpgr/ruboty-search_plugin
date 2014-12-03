require 'ruboty/search_plugin/actions/ruboty-sonar_helper'

module Ruboty
  module SearchPlugin
    module Actions
      class Info < Ruboty::Actions::Base
        include RubotySonarHelper

        def call
          message.reply(info)
        end

        private

        def info
          gem_info = call_method(:info, gem_name)
          <<-EOS
name:#{gem_info[:name]}
desc:#{gem_info[:desc]}
downloads:#{gem_info[:downloads]}
rubygems_uri:#{gem_info[:rubygems_uri]}
homepage_uri:#{gem_info[:homepage_uri]}
          EOS
        end
      end
    end
  end
end
