class ProductsController < ApplicationController
  def index
  	@products = Product.all
  end

  def detail
  	@product = Product.find(params[:id])
  	@product.img = "/products/#{@product.img}"

  	
  end

end
