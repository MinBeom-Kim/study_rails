class StudiesController < ApplicationController
  before_action :set_study, only: [:show, :edit, :update, :destroy]

  # GET /studies
  # GET /studies.json
  def index
    @studies = Study.all
  end

  # GET /studies/1
  # GET /studies/1.json
  def show
    @study = Study.find(params[:id])
    @uhs_class = UserHasStudy.where(study_id: @study).all
  end

  # GET /studies/new
  def new
    @study = @category.studies.new
  end

  # GET /studies/1/edit
  def edit
    @study = @category.studies.find(params[:id])
  end

  # POST /studies
  # POST /studies.json
  def create
    @category = Category.find(params[:category_id])
    @study = @category.studies.create(study_params)
    if @study.save
      redirect_to category_path(@category), notice: '스터디가 성공적으로 등록되었습니다.'
    else
      redirect_to category_path(@category), notice: '비어있는 칸이 있습니다. 다시 등록해주세요.'
    end
  end

  # PATCH/PUT /studies/1
  # PATCH/PUT /studies/1.json
  def update
    @study = @category.studies.find(params[:id])
    @study.update(study_params)
    redirect_to category_path(@category)
  end

  # DELETE /studies/1
  # DELETE /studies/1.json
  def destroy
    @study.destroy
    redirect_to category_path(@category)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_study
      @category = Category.find(params[:category_id])
      @study = Study.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def study_params
      params.require(:study).permit(:category_id, :study_name, :intro, :goal, :curriculem, :max_number, :status)
    end
end
