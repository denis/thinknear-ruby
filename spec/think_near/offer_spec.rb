require 'spec_helper'

describe ThinkNear::Offer do
  it "returns attributes passed during initialization" do
    attributes = { :discount => '10%', :title => 'Spa 10% off', :id => 'WELL_SPA' }
    described_class.new(attributes).attributes.should == attributes
  end
end
