module ThinkNear
  class Client
    @@connection = nil
    @@debug = false

    class << self
      def set_credentials(token, secret)
        @@connection = Connection.new(token, secret)
        @@connection.debug = @@debug
      end

      def debug=(debug_flag)
        @@debug = debug_flag
        @@connection.debug = @@debug  if @@connection
      end

      def debug
        @@debug
      end

      def get_ping
        get Endpoint.ping
      end

      def get_health
        get Endpoint.health
      end

      def get_authenticated
        get Endpoint.authenticated
      end

      def get_categories
        get Endpoint.categories
      end

      def get_draws(category)
        get Endpoint.draws(category)
      end

      def get_offers(params)
        get Endpoint.offers(params)
      end

      def get_offer(id)
        get Endpoint.offer(id)
      end

      def claim_offer(offer_id, latitude, longitude)
        post Endpoint.claim_offer(offer_id, latitude, longitude)
      end

      def get(endpoint, data=nil)
        raise NoConnectionEstablished  if @@connection.nil?
        @@connection.get endpoint, data
      end

      def post(endpoint, data=nil)
        raise NoConnectionEstablished  if @@connection.nil?
        @@connection.post endpoint, data
      end
    end
  end
end
