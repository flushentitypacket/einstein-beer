require "test_helper"

class BeerTest < ActiveSupport::TestCase

  def beer
    @beer ||= Beer.new
  end

  def test_valid
    assert beer.valid?
  end

end
