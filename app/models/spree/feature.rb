module Spree
  class Feature < ActiveRecord::Base

    has_many :feature_images,  :class_name => Spree::FeatureImage, :dependent => :destroy
    #has_many :feature_images, :order => 'position', :class_name => Spree::FeatureImage

    validates_presence_of :headline1, :headline2
    
    accepts_nested_attributes_for :feature_images, :allow_destroy => true

    default_scope { order(position: :asc) }
    scope :active, -> { where(active: true) }

    # def feature_images=(images)
    #   images.each do |image|
    #     self.feature_images.build(:content => image)
    #   end
    # end

    def feature_image
      feature_images.first
    end

    def feature_image_url
      feature_images.first.image.url if feature_image
    end

    def has_slideshow?
      feature_images.count > 1
    end
  end
end
