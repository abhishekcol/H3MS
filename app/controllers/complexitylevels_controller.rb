class ComplexitylevelsController < ApplicationController
  before_action :set_complexitylevel, only: [:show, :edit, :update, :destroy]

  # GET /complexitylevels
  # GET /complexitylevels.json
  def index
    @complexitylevels = Complexitylevel.all
  end

  # GET /complexitylevels/1
  # GET /complexitylevels/1.json
  def show
  end

  # GET /complexitylevels/new
  def new
    @complexitylevel = Complexitylevel.new
  end

  # GET /complexitylevels/1/edit
  def edit
  end

  # POST /complexitylevels
  # POST /complexitylevels.json
  def create
    @complexitylevel = Complexitylevel.new(complexitylevel_params)

    respond_to do |format|
      if @complexitylevel.save
        format.html { redirect_to @complexitylevel, notice: 'Complexitylevel was successfully created.' }
        format.json { render action: 'show', status: :created, location: @complexitylevel }
      else
        format.html { render action: 'new' }
        format.json { render json: @complexitylevel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /complexitylevels/1
  # PATCH/PUT /complexitylevels/1.json
  def update
    respond_to do |format|
      if @complexitylevel.update(complexitylevel_params)
        format.html { redirect_to @complexitylevel, notice: 'Complexitylevel was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @complexitylevel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /complexitylevels/1
  # DELETE /complexitylevels/1.json
  def destroy
    @complexitylevel.destroy
    respond_to do |format|
      format.html { redirect_to complexitylevels_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_complexitylevel
      @complexitylevel = Complexitylevel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def complexitylevel_params
      params.require(:complexitylevel).permit(:complexitylevel)
    end
end
