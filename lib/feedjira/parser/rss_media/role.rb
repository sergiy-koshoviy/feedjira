module Feedjira
  module Parser
    class RSSMedia
      class Role
        include SAXMachine

        attribute :role

        attribute :scheme

        element   :"media:credit", as: :name
      end
    end
  end
end
