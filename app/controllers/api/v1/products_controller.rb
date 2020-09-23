class Api::V1::ProductsController < ApplicationController
  def index
    Product.all
  end
end
