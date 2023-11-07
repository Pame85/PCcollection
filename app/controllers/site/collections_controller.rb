class Site::CollectionsController < ApplicationController
  def index
    @collections = Collection.order(created_at: :desc)
  end

  def show
    @collection = Collection.friendly.find(params[:id])
  end
end
