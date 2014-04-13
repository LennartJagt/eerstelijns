require 'test_helper'

class PracticeTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Practice.new.valid?
  end
end
