class BrandsController < InheritedResources::Base

  private

    def brand_params
      params.require(:brand).permit(:name, :category_id)
    end

end
