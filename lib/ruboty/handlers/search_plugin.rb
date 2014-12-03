require "ruboty/search_plugin/actions/info"
require "ruboty/search_plugin/actions/random"
require "ruboty/search_plugin/actions/ranking"
require "ruboty/search_plugin/actions/author_ranking"

module Ruboty
  module Handlers
    class SearchPlugin < Base
      on /search_plugin info (?<gem_name>.+)\z/, name: 'info', description: 'get ruboty-plugin info'
      on /search_plugin random\z/, name: 'random', description: 'get ruboty-plugin info at random'
      on /search_plugin ranking (?<limit>\d+)\z/, name: 'ranking', description: 'get ruboty-plugin ranking'
      on /search_plugin author_ranking (?<limit>\d+)\z/, name: 'author_ranking', description: 'get ruboty-plugin author_ranking'

      def info(message)
        Ruboty::SearchPlugin::Actions::Info.new(message).call
      end

      def random(message)
        Ruboty::SearchPlugin::Actions::Random.new(message).call
      end

      def ranking(message)
        Ruboty::SearchPlugin::Actions::Ranking.new(message).call
      end

      def author_ranking(message)
        Ruboty::SearchPlugin::Actions::AuthorRanking.new(message).call
      end
    end
  end
end
