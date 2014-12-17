module Lookup
  class Ocr
    attr_reader :ocr

    def initialize(ocr = nil)
      @ocr ||= tesseract
    end

    def text_for(image)
      return ocr.text_for(image).strip
    end

    private

    def tesseract(options = {})
      return Tesseract::Engine.new do |engine|
        engine.language = options[:language] || :eng
        engine.blacklist = options[:blacklist] || ''
      end
    end
  end
end
