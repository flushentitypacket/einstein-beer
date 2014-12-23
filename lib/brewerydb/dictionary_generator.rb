# require stuff

client = BreweryDB::Client.new do |config|
  config.api_key = Rails.application.secrets.brewery_db_api_key
end

beers = client.beers.all.as_json

File.new("#{Rails.root}/db/seeds/dictionary.json", 'w').write(beers.map { |b| b['name'] }.to_json)
