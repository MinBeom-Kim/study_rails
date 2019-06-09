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
    @Study = Study.all
    @user = User.all
    @uhs_class = UserHasStudy.where(study_id: @study).all
  end

  # GET /studies/new
  def new
    @category = Category.find(params[:category_id])
    @study = @category.studies.new
    redirect_back(fallback_location: root_path)

  end

  # GET /studies/1/edit
  def edit
    @category = Category.find(params[:category_id])
    @study = Study.find(params[:id])
  end

  # POST /studies
  # POST /studies.json
  def create
    @category = Category.find(params[:category_id])
    @study = @category.studies.create(study_params)
    if @study.save
      @uhs_class = UserHasStudy.new
      @uhs_class.study_id = Study.maximum(:id)
      @uhs_class.user_id = current_user.id
      @uhs_class.user_role = 0
      @uhs_class.save
      redirect_back(fallback_location: root_path, notice: '스터디를 성공적으로 제안하셨습니다. 관리자 승인을 기다려주세요')
    else
      redirect_to category_path(@category), notice: '비어있는 칸이 있습니다. 다시 등록해주세요.'
    end
  end

  # PATCH/PUT /studies/1
  # PATCH/PUT /studies/1.json
  def update
    @category = Category.find(params[:category_id])
    @study = Study.find(params[:id])
    @study.update(study_params)
    redirect_to category_path(@category)
  end

  # DELETE /studies/1
  # DELETE /studies/1.json
  def destroy
    @study.destroy
    redirect_back(fallback_location: root_path, notice: '정상적으로 삭제되었습니다.')
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_study
      # @category = Category.find(params[:category_id])
      @study = Study.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def study_params
      params.require(:study).permit(:category_id, :study_name, :intro, :goal, :curriculem, :max_number, :status)
    end
end
