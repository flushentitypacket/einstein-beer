module Lookup
  class Beer
    attr_reader :client

    def initialize(client = nil)
      @client ||= brewery_db
    end

    def search(s)
      return client.search.beers(q: s).as_json
    end

    private

    def brewery_db
      return BreweryDB::Client.new do |config|
        config.api_key = Rails.application.secrets.brewery_db_api_key
      end
    end
  end
end
