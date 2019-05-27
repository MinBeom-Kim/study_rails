class CategoryHasStudiesController < ApplicationController
  before_action :set_category_has_study, only: [:show, :edit, :update, :destroy]

  # GET /category_has_studies
  # GET /category_has_studies.json
  def index
    @category_has_studies = CategoryHasStudy.all
  end

  # GET /category_has_studies/1
  # GET /category_has_studies/1.json
  def show
  end

  # GET /category_has_studies/new
  def new
    @category_has_study = CategoryHasStudy.new
  end

  # GET /category_has_studies/1/edit
  def edit
  end

  # POST /category_has_studies
  # POST /category_has_studies.json
  def create
    @category_has_study = CategoryHasStudy.new(category_has_study_params)

    respond_to do |format|
      if @category_has_study.save
        format.html { redirect_to @category_has_study, notice: 'Category has study was successfully created.' }
        format.json { render :show, status: :created, location: @category_has_study }
      else
        format.html { render :new }
        format.json { render json: @category_has_study.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /category_has_studies/1
  # PATCH/PUT /category_has_studies/1.json
  def update
    respond_to do |format|
      if @category_has_study.update(category_has_study_params)
        format.html { redirect_to @category_has_study, notice: 'Category has study was successfully updated.' }
        format.json { render :show, status: :ok, location: @category_has_study }
      else
        format.html { render :edit }
        format.json { render json: @category_has_study.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /category_has_studies/1
  # DELETE /category_has_studies/1.json
  def destroy
    @category_has_study.destroy
    respond_to do |format|
      format.html { redirect_to category_has_studies_url, notice: 'Category has study was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category_has_study
      @category_has_study = CategoryHasStudy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_has_study_params
      params.require(:category_has_study).permit(:category_id, :study_id)
    end
end
