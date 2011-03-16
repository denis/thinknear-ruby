module ThinkNear
  class Endpoint
    class << self
      def ping
        endpoint_url 'ping'
      end

      def health
        endpoint_url 'health'
      end

      def authenticated
        endpoint_url 'authenticated'
      end

      def categories
        endpoint_url 'categories'
      end

      def draws(category)
        endpoint_url "draws/#{category}"
      end

      def offers(params)
        latitude = params.delete(:latitude)
        longitude = params.delete(:longitude)

        params = params.select { |k, v| !v.blank? }

        endpoint_url("offers/#{latitude},#{longitude}") + "?#{params.to_param}"
      end

      def offer(id)
        endpoint_url "offers/#{id}"
      end

      def claim_offer(offer_id, latitude, longitude)
        endpoint_url "offers/#{offer_id}/claim/#{latitude},#{longitude}"
      end

      def endpoint_url(path, version = API_VERSION, format = 'json')
        [REALM, version, [path, format].join('.')].join('/')
      end
    end
  end
end
