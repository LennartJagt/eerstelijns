require File.dirname(__FILE__) + '/../spec_helper'

describe Practice do
  it "should be valid" do
    Practice.new.should be_valid
  end
end
