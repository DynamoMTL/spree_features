require 'spec_helper'

describe Spree::Feature do

  before(:each) do
    @feature = mock_model('Feature', headline1: "Spring Sale", headline2: 'On now')
  end

  context "validations" do
    it { should validate_presence_of(:headline1) }
    it { should validate_presence_of(:headline2) }
  end

end
