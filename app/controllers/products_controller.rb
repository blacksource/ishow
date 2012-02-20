class ProductsController < ApplicationController
  def index
  	@products = Product.all
  end

  def detail
  end

end
