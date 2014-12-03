require 'ruboty/search_plugin/actions/ruboty-sonar_helper'

module Ruboty
  module SearchPlugin
    module Actions
      class Ranking < Ruboty::Actions::Base
        include RubotySonarHelper

        def call
          message.reply(ranking)
        end

        private

        def ranking
          call_method(:ranking, limit).map.with_index(1) do |gem_info, i|
            "no:#{i},name:#{gem_info[:name]},downloads:#{gem_info[:downloads]}"
          end.join("\n")
        end
      end
    end
  end
end
