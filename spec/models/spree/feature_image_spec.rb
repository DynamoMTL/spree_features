require 'spec_helper'

describe Spree::FeatureImage do

  it { should validate_presence_of(:content) }
  it { should belong_to(:feature)}

end 
