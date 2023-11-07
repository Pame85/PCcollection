class Site::PagesController < ApplicationController
  def index
    @collections = Collection.available.order(created_at: :desc).limit(3)
    @products = Product.available.order(created_at: :desc).limit(3)
  end
end
