class LookupController < ApplicationController
  def create
    image = Magick::Image.from_blob(params['image'].read).first
    data = Lookup::Lookup.new(image).get
    @rows = data.map do |ocr_name, beer|
      if beer.data['style']
        [ocr_name, beer.data['name'], beer.data['style']['name']]
      else
        [ocr_name, beer.data['name'], '']
      end
    end
  end
end
