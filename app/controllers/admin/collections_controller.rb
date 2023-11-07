class Admin::CollectionsController < AdminController
  before_action :set_collection, only: %i[ show edit update destroy ]

  def index
    @collections = Collection.all
  end

  def show
  end

  def new
    @collection = Collection.new
  end

  def edit
  end

  def create
    @collection = Collection.new(collection_params)

    if @collection.save
      redirect_to admin_collection_url(@collection), notice: 'Collection was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @collection.update(collection_params)
      redirect_to admin_collection_url(@collection), notice: 'Collection was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @collection.destroy
    redirect_to collections_url, notice: 'Collection was successfully destroyed.'
  end

  private
    def set_collection
      @collection = Collection.friendly.find(params[:id])
    end

    def collection_params
      params.require(:collection).permit(:sku, :name, :description, :quantity, :price, :available, product_ids: [])
    end
end
