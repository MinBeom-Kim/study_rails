class UserHasStudiesController < ApplicationController
  before_action :set_user_has_study, only: [:show, :edit, :update, :destroy]

  # GET /user_has_studies
  # GET /user_has_studies.json
  def index
    @user_has_studies = UserHasStudy.all
  end

  # GET /user_has_studies/1
  # GET /user_has_studies/1.json
  def show
  end

  # GET /user_has_studies/new
  def new
    @user_has_study = UserHasStudy.new
  end

  # GET /user_has_studies/1/edit
  def edit
  end

  # POST /user_has_studies
  # POST /user_has_studies.json
  def create
    @user_has_study = UserHasStudy.new(user_has_study_params)

    respond_to do |format|
      if @user_has_study.save
        format.html { redirect_to @user_has_study, notice: 'User has study was successfully created.' }
        format.json { render :show, status: :created, location: @user_has_study }
      else
        format.html { render :new }
        format.json { render json: @user_has_study.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_has_studies/1
  # PATCH/PUT /user_has_studies/1.json
  def update
    respond_to do |format|
      if @user_has_study.update(user_has_study_params)
        format.html { redirect_to @user_has_study, notice: 'User has study was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_has_study }
      else
        format.html { render :edit }
        format.json { render json: @user_has_study.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_has_studies/1
  # DELETE /user_has_studies/1.json
  def destroy
    @user_has_study.destroy
    respond_to do |format|
      format.html { redirect_to user_has_studies_url, notice: 'User has study was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_has_study
      @user_has_study = UserHasStudy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_has_study_params
      params.require(:user_has_study).permit(:user_id, :study_id, :user_role)
    end
end
