module Lookup
  class Lookup
    def initialize(image)
      @image = image
    end

    def get
      text = Ocr.new.text_for(@image)
      items = text_to_list(text)

      data = {}
      items.each do |item|
        data[item] = Beer.find_by_fuzzy_name(item, limit: 1).first
      end

      return data
    end

    private

    def text_to_list(s)
      return s.strip.split("\n").map(&:strip).reject { |i| i.blank? }
    end
  end
end
