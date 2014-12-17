# NOTE: Since this file is big and will only get bigger, this should
# be modified to parse the JSON in batches.
beers = JSON.parse(File.read('db/seeds/dictionary.json'))
beers.each { |b| Beer.create!(name: b['name'], data: b) }
