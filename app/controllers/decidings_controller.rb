class DecidingsController < ApplicationController
  before_action :set_deciding, only: [:show, :edit, :update, :destroy]

  # GET /decidings
  # GET /decidings.json
  def index
    @decidings = Deciding.all
  end

  # GET /decidings/1
  # GET /decidings/1.json
  def show
  end

  # GET /decidings/new
  def new
    @deciding = Deciding.new
    @restaurants = Restaurant.scoped.decorate
  end

  # GET /decidings/1/edit
  def edit
  end

  # POST /decidings
  # POST /decidings.json
  def create
    @deciding = Deciding.new(deciding_params)

    respond_to do |format|
      if @deciding.save
        format.html { redirect_to @deciding, notice: 'Deciding was successfully created.' }
        format.json { render action: 'show', status: :created, location: @deciding }
      else
        format.html { render action: 'new' }
        format.json { render json: @deciding.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /decidings/1
  # PATCH/PUT /decidings/1.json
  def update
    respond_to do |format|
      if @deciding.update(deciding_params)
        format.html { redirect_to @deciding, notice: 'Deciding was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @deciding.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /decidings/1
  # DELETE /decidings/1.json
  def destroy
    @deciding.destroy
    respond_to do |format|
      format.html { redirect_to decidings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deciding
      @deciding = Deciding.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def deciding_params
      params.require(:deciding).permit(:name, :identifier)
    end
end
