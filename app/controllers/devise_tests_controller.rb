class DeviseTestsController < ApplicationController
  before_action :set_devise_test, only: [:show, :edit, :update, :destroy]

  # GET /devise_tests
  # GET /devise_tests.json
  def index
    @devise_tests = DeviseTest.all
  end

  # GET /devise_tests/1
  # GET /devise_tests/1.json
  def show
  end

  # GET /devise_tests/new
  def new
    @devise_test = DeviseTest.new
  end

  # GET /devise_tests/1/edit
  def edit
  end

  # POST /devise_tests
  # POST /devise_tests.json
  def create
    @devise_test = DeviseTest.new(devise_test_params)

    respond_to do |format|
      if @devise_test.save
        format.html { redirect_to @devise_test, notice: 'Devise test was successfully created.' }
        format.json { render :show, status: :created, location: @devise_test }
      else
        format.html { render :new }
        format.json { render json: @devise_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /devise_tests/1
  # PATCH/PUT /devise_tests/1.json
  def update
    respond_to do |format|
      if @devise_test.update(devise_test_params)
        format.html { redirect_to @devise_test, notice: 'Devise test was successfully updated.' }
        format.json { render :show, status: :ok, location: @devise_test }
      else
        format.html { render :edit }
        format.json { render json: @devise_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /devise_tests/1
  # DELETE /devise_tests/1.json
  def destroy
    @devise_test.destroy
    respond_to do |format|
      format.html { redirect_to devise_tests_url, notice: 'Devise test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_devise_test
      @devise_test = DeviseTest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def devise_test_params
      params.fetch(:devise_test, {})
    end
end
