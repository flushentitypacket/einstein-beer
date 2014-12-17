require 'test_helper'

module Lookup
  describe Ocr do
    before do
      @ocr = Ocr.new
      @image = Magick::Image.read("#{File.dirname(__FILE__)}/test.tif").first
      @text = File.read("#{File.dirname(__FILE__)}/test_result.txt").strip
    end

    describe '#text_for' do
      it 'returns the parsed text' do
        @ocr.text_for(@image).must_equal @text
      end
    end
  end
end
