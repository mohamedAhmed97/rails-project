ActiveAdmin.register Product do
  config.filters = false
  form do |f|
    f.inputs "Firmware" do
      f.input :title
      f.input :price
      f.input :description
      f.input :store_id, :as => :select, :collection => Store.all.collect {|store| [store.name, store.id] }
      f.input :brand_id, :as => :select, :collection => Brand.all.collect {|brand| [brand.name, brand.id] }
      f.input :category_id, :as => :select, :collection => Category.all.collect {|category| [category.name, category.id] }
      f.input :image, as: :file
    end
    f.actions
  end
  
  

  controller do

    def create
      @product = Product.new(product_params)
  
      respond_to do |format|
        if @product.save
          format.html { redirect_to @product, notice: 'Product was successfully created.' }
          format.json { render :show, status: :created, location: @product }
        else
          format.html { render :new }
          format.json { render json: @product.errors, status: :unprocessable_entity }
        end
      end
    end
    # PATCH/PUT /products/1
    #  PATCH/PUT /products/1.json
    

    def product_params
      params.require(:product).permit(:title, :image, :price, :description, :brand_id, :category_id, :store_id)
    end

  end   
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :price, :description, :brand_id, :category_id, :image
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :price, :description, :brand_id, :category_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
