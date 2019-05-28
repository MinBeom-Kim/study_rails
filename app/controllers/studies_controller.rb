class StudiesController < ApplicationController
  before_action :set_study, only: [:show, :edit, :update, :destroy]

  # GET /studies
  # GET /studies.json
  def index
    @studies = Study.all
    @study_new = Study.new
  end

  # GET /studies/1
  # GET /studies/1.json
  def show
  end

  # GET /studies/new
  def new
    @category = Category.find(params[:category_id])
    @study = @category.studies.new
  end

  # GET /studies/1/edit
  def edit
    @category = Category.find(params[:category_id])
    @study = @category.studies.find(params[:id])
  end

  # POST /studies
  # POST /studies.json
  def create
    @category = Category.find(params[:category_id])
    @study = @category.studies.create(study_params)
    #@study = Study.new(study_params)
    redirect_to category_path(@category)
  end

  # PATCH/PUT /studies/1
  # PATCH/PUT /studies/1.json
  def update
    @category = Category.find(params[:category_id])
    @study = @category.studies.find(params[:id])
    @study.update(study_params)
    redirect_to category_path(@category)
  end

  # DELETE /studies/1
  # DELETE /studies/1.json
  def destroy
    @category = Category.find(params[:category_id])
    @study.destroy
    redirect_to category_path(@category)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_study
      @study = Study.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def study_params
      params.require(:study).permit(:study_name, :intro, :goal, :curriculum, :max_number, :status)
    end
end
