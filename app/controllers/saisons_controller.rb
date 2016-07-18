class SaisonsController < ApplicationController
  before_action :set_saison, only: [:show, :edit, :update, :destroy]

  # GET /saisons
  # GET /saisons.json
  def index
    @saisons = Saison.all
  end

  # GET /saisons/1
  # GET /saisons/1.json
  def show
  end

  # GET /saisons/new
  def new
    @saison = Saison.new
  end

  # GET /saisons/1/edit
  def edit
  end

  # POST /saisons
  # POST /saisons.json
  def create
    @saison = Saison.new(saison_params)

    respond_to do |format|
      if @saison.save
        format.html { redirect_to @saison, notice: 'Saison was successfully created.' }
        format.json { render action: 'show', status: :created, location: @saison }
      else
        format.html { render action: 'new' }
        format.json { render json: @saison.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /saisons/1
  # PATCH/PUT /saisons/1.json
  def update
    respond_to do |format|
      if @saison.update(saison_params)
        format.html { redirect_to @saison, notice: 'Saison was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @saison.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /saisons/1
  # DELETE /saisons/1.json
  def destroy
    @saison.destroy
    respond_to do |format|
      format.html { redirect_to saisons_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_saison
      @saison = Saison.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def saison_params
      params.require(:saison).permit(:annee, :ligue, :sport)
    end
end
