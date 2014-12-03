require 'ruboty/search_plugin/actions/ruboty-sonar_helper'

module Ruboty
  module SearchPlugin
    module Actions
      class Random < Ruboty::Actions::Base
        include RubotySonarHelper

        def call
          message.reply(random)
        end

        private

        def random
          gem_info = call_method(:random)
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
