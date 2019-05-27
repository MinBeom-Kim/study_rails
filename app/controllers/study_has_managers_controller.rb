class StudyHasManagersController < ApplicationController
  before_action :set_study_has_manager, only: [:show, :edit, :update, :destroy]

  # GET /study_has_managers
  # GET /study_has_managers.json
  def index
    @study_has_managers = StudyHasManager.all
  end

  # GET /study_has_managers/1
  # GET /study_has_managers/1.json
  def show
  end

  # GET /study_has_managers/new
  def new
    @study_has_manager = StudyHasManager.new
  end

  # GET /study_has_managers/1/edit
  def edit
  end

  # POST /study_has_managers
  # POST /study_has_managers.json
  def create
    @study_has_manager = StudyHasManager.new(study_has_manager_params)

    respond_to do |format|
      if @study_has_manager.save
        format.html { redirect_to @study_has_manager, notice: 'Study has manager was successfully created.' }
        format.json { render :show, status: :created, location: @study_has_manager }
      else
        format.html { render :new }
        format.json { render json: @study_has_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /study_has_managers/1
  # PATCH/PUT /study_has_managers/1.json
  def update
    respond_to do |format|
      if @study_has_manager.update(study_has_manager_params)
        format.html { redirect_to @study_has_manager, notice: 'Study has manager was successfully updated.' }
        format.json { render :show, status: :ok, location: @study_has_manager }
      else
        format.html { render :edit }
        format.json { render json: @study_has_manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /study_has_managers/1
  # DELETE /study_has_managers/1.json
  def destroy
    @study_has_manager.destroy
    respond_to do |format|
      format.html { redirect_to study_has_managers_url, notice: 'Study has manager was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_study_has_manager
      @study_has_manager = StudyHasManager.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def study_has_manager_params
      params.require(:study_has_manager).permit(:manager_id, :study_id, :approve)
    end
end
