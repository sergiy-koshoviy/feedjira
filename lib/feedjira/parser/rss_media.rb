module Feedjira
  module Parser
    # Parser for dealing with Media RSS.
    # Source: http://www.rssboard.org/media-rss
    class RSSMedia
      include SAXMachine
      include FeedUtilities

      element :title
      element :link, as: :url
      element :description
      element :language
      element :lastBuildDate, as: :last_built
      element :rss, as: :version, value: :version
      elements :item, as: :entries, class: RSSMedia::Item

      attr_accessor :feed_url, :author

      def self.able_to_parse?(xml)
        !!(%r{(?:xmlns:media="http:\/\/search.yahoo.com\/mrss\/")} =~ xml)
      end
    end
  end
end
