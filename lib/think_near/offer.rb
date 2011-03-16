module ThinkNear
  class Offer < OpenStruct
    def self.find(id_or_params)
      if id_or_params.is_a? String
        new Client.get_offer(id_or_params)['offer']
      elsif id_or_params.is_a? Hash
        Client.get_offers(id_or_params).map do |item|
          new item['offer']
        end
      end
    end

    def attributes
      @table
    end

    def claim(latitude, longitude)
      self.class.new Client.claim_offer(id, latitude, longitude)['offer']
    end
  end
end
