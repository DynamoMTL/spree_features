module Spree
  module Admin
    class FeaturesController < ResourceController

      def new
        @feature = Feature.new
        @feature.feature_images.build
      end

      def edit
        @feature = Feature.find(params[:id])
        @feature.feature_images.build
      end

      def update_positions
        params[:positions].each do |id, index|
          Feature.where(:id => id).update_all(:position => index)
        end

        respond_to do |format|
          format.js  { render :text => 'Ok' }
        end
      end

      def delete_feature_image
        @feature.feature_images.where(id: params[:image]).first.destroy
        flash[:notice] = "The image was successfully deleted"
        redirect_to edit_admin_feature_url(@feature)
      end

      def index
      end


    end
  end
end

