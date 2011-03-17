require 'spec_helper'

describe ThinkNear::Draw do
  describe "#attributes" do
    it "returns attributes passed during initialization" do
      attributes = { :category => 'Spa', :display_value => 'Manicure', :name => 'spa_manicure' }
      described_class.new(attributes).attributes.should == attributes
    end
  end
end
