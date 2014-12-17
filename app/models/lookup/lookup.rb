module Lookup
  class Lookup
    def initialize(image)
      @image = image
    end

    def get
      text = Ocr.new.text_for(@image)
      items = text_to_list(text)
      matcher = FuzzyMatch.new(Beer.all, read: :name)

      data = {}
      items.each do |item|
        data[item] = matcher.find(item)
      end

      return data
    end

    private

    def text_to_list(s)
      return s.strip.split("\n").map(&:strip).reject { |i| i.blank? }
    end
  end
end
