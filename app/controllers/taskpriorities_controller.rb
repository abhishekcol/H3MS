class TaskprioritiesController < ApplicationController
  before_action :set_taskpriority, only: [:show, :edit, :update, :destroy]

  # GET /taskpriorities
  # GET /taskpriorities.json
  def index
    @taskpriorities = Taskpriority.all
  end

  # GET /taskpriorities/1
  # GET /taskpriorities/1.json
  def show
  end

  # GET /taskpriorities/new
  def new
    @taskpriority = Taskpriority.new
  end

  # GET /taskpriorities/1/edit
  def edit
  end

  # POST /taskpriorities
  # POST /taskpriorities.json
  def create
    @taskpriority = Taskpriority.new(taskpriority_params)

    respond_to do |format|
      if @taskpriority.save
        format.html { redirect_to @taskpriority, notice: 'Taskpriority was successfully created.' }
        format.json { render action: 'show', status: :created, location: @taskpriority }
      else
        format.html { render action: 'new' }
        format.json { render json: @taskpriority.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /taskpriorities/1
  # PATCH/PUT /taskpriorities/1.json
  def update
    respond_to do |format|
      if @taskpriority.update(taskpriority_params)
        format.html { redirect_to @taskpriority, notice: 'Taskpriority was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @taskpriority.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /taskpriorities/1
  # DELETE /taskpriorities/1.json
  def destroy
    @taskpriority.destroy
    respond_to do |format|
      format.html { redirect_to taskpriorities_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_taskpriority
      @taskpriority = Taskpriority.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def taskpriority_params
      params.require(:taskpriority).permit(:priority)
    end
end
