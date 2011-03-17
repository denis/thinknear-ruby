require 'spec_helper'

describe ThinkNear::Category do
  it "returns attributes passed during initialization" do
    attributes = { :name => 'Spa' }
    described_class.new(attributes).attributes.should == attributes
  end
end
