class Admin::IndustriesController < AdminController
  before_action :set_industry, only: %i[ show edit update destroy ]

  def index
    @industries = Industry.all
  end

  def show
  end

  def new
    @industry = Industry.new
  end

  def edit
  end

  def create
    @industry = Industry.new(industry_params)

    if @industry.save
      redirect_to admin_industry_url(@industry), notice: 'Industry was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @industry.update(industry_params)
      redirect_to admin_industry_url(@industry), notice: 'Industry was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @industry.destroy

    redirect_to admin_industries_url, notice: 'Industry was successfully destroyed.'
  end

  private
    def set_industry
      @industry = Industry.friendly.find(params[:id])
    end

    def industry_params
      params.require(:industry).permit(:name)
    end
end
