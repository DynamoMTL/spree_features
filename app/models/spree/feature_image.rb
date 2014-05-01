module Spree
  class FeatureImage < ActiveRecord::Base
    belongs_to :feature, touch: true
    #attr_accessible :content, :position, :feature_id

    # image_accessor :content do
    #   copy_to(:standard) { |a| a.thumb('460x634') }
    #   copy_to(:small)    { |a| a.thumb('300x300') }
    # end

    # image_accessor :standard
    # image_accessor :small

    validates_presence_of :content, on: :create
  end
end
