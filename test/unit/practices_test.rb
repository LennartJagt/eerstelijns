require 'test_helper'

class PracticesTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Practices.new.valid?
  end
end
