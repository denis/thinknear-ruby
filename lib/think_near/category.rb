module ThinkNear
  class Category < OpenStruct
    def self.all
      Client.get_categories.map do |category_name|
        new :name => category_name
      end
    end

    def draws
      Client.get_draws(name).map do |item|
        Draw.new item['draw']
      end
    end

    def attributes
      @table
    end
  end
end
