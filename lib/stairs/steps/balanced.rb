require "stairs"
require "balanced"

module Stairs
  module Steps
    class Balanced < Stairs::Step
      title "Balanced Payments"
      description "Creates a test Marketplace on Balanced"

      def run
        ::Balanced.configure(api_key.secret)

        env marketplace_uri_name, marketplace.uri
        env key_name, api_key.secret
      end

      private

      def marketplace_uri_name
        options[:marketplace_uri] || "BALANCED_URI"
      end

      def key_name
        options[:key] || "BALANCED_KEY"
      end

      def api_key
        @api_key ||= ::Balanced::ApiKey.new.save
      end

      def marketplace
        @marketplace ||= ::Balanced::Marketplace.new.save
      end
    end
  end
end
