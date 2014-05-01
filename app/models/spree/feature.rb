module Spree
  class Feature < ActiveRecord::Base

    has_many :feature_images,  :class_name => Spree::FeatureImage
    #has_many :feature_images, :order => 'position', :class_name => Spree::FeatureImage
    validates_presence_of :headline1, :headline2
    #attr_accessible :active, :headline1, :headline2, :link, :name, :position, :feature_images, :link_label, :ga_tag

    def feature_images=(images)
      images.each do |image|
        self.feature_images.build(:content => image)
      end
    end

    def feature_image
      feature_images.first
    end
    def has_slideshow?
      feature_images.count > 1
    end
  end
end
