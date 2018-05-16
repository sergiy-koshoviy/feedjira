module Feedjira
  module Parser
    class RSSMedia
      class ItemContent
        include SAXMachine

        attribute :url
        attribute :type
        attribute :medium
        attribute :bitrate
        attribute :fileSize
        attribute :isDefault
        attribute :framerate
        attribute :expression
        attribute :samplingrate
        attribute :channels
        attribute :duration
        attribute :height
        attribute :width
        attribute :lang

        element :"media:title",       as: :title
        element :"media:description", as: :description
        element :"media:credit",      as: :author
        element :"media:adult",       as: :adult
        element :"media:rating",      as: :rating
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

        # TODO implement roles with available set author
        # elements :"media:credit",  as: :roles, class: RSSMedia::Role
      end
    end
  end
end
