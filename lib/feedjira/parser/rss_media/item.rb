module Feedjira
  module Parser
    class RSSMedia
      class Item
        include SAXMachine
        include FeedEntryUtilities

        element :title
        element :guid,                as: :entry_id
        element :link,                as: :url
        element :pubDate,             as: :published
        element :description,         as: :summary
        element :"media:credit",      as: :author
        element :enclosure,           as: :image, value: :url
        element :"media:adult",       as: :adult
        element :"media:rating",      as: :rating
        element :"media:title",       as: :title
        element :"media:description", as: :desription
        element :"media:keywords",    as: :keyword
        element :"media:thumbnails",  as: :thumbnails
        element :"media:category",    as: :category
        element :"media:hash",        as: :hash
        element :"media:player",      as: :player
        element :"media:copyright",   as: :copyright
        element :"media:text",        as: :text
        element :"media:restriction", as: :restriction
        element :"media:community",   as: :community
        element :"media:comments",    as: :comments
        element :"media:embed",       as: :embed
        element :"media:responses",   as: :responses
        element :"media:backLinks",   as: :backlinks
        element :"media:status",      as: :status
        element :"media:price",       as: :price
        element :"media:license",     as: :license
        element :"media:subTitle",    as: :subTitle
        element :"media:peerLink",    as: :peerLink
        element :"media:rights",      as: :rights
        element :"media:scenes",      as: :scenes
        element :"media:content",     as: :image, value: :url, with: { type: 'image/jpeg' }

        elements :category,        as: :categories

        # TODO implement roles with available set author
        # elements :"media:credit",  as: :roles,    class: RSSMedia::Role
        # elements :"media:content", as: :contents, class: RSSMedia::ItemContent
      end
    end
  end
end
