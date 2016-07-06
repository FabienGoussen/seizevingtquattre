class ProductsController < ApplicationController
	skip_before_action :authenticate_user!, only: :home
	before_action :set_product, only: [:show, :edit, :update, :destroy]
	
	def index
		@products = Product.all
	end

 def home
 	@products = Product.all
 end

  def show
  end

  def new
      @product = Product.new
  end

  def edit

  end
# ​
  def update
      if @product.update(product_params)
        redirect_to product_path(@product)
      else
        render :edit
      end
  end

  def create
      @product = Product.new(product_params)
      if @product.save
          redirect_to products_path(@product)
      else
          render :new
      end
  end

    def destroy
      @product.destroy
      redirect_to products_path
  end

private

def product_params
  params.require(:product).permit(:name, :description, :photo, :photo_cache)
end

 def set_product
        @product = Product.find(params[:id])
    end
end