class CharlasController < ApplicationController
  before_action :set_charla, only: [:show, :edit, :update, :destroy]

  # GET /charlas
  # GET /charlas.json
  def index
    @charlas = Charla.all
  end

  # GET /charlas/1
  # GET /charlas/1.json
  def show
  end

  # GET /charlas/new
  def new
    @charla = Charla.new
  end

  # GET /charlas/1/edit
  def edit
  end

  # POST /charlas
  # POST /charlas.json
  def create
    @charla = Charla.new(charla_params)

    respond_to do |format|
      if @charla.save
        format.html { redirect_to @charla, notice: 'Charla was successfully created.' }
        format.json { render :show, status: :created, location: @charla }
      else
        format.html { render :new }
        format.json { render json: @charla.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /charlas/1
  # PATCH/PUT /charlas/1.json
  def update
    respond_to do |format|
      if @charla.update(charla_params)
        format.html { redirect_to @charla, notice: 'Charla was successfully updated.' }
        format.json { render :show, status: :ok, location: @charla }
      else
        format.html { render :edit }
        format.json { render json: @charla.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /charlas/1
  # DELETE /charlas/1.json
  def destroy
    @charla.destroy
    respond_to do |format|
      format.html { redirect_to charlas_url, notice: 'Charla was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_charla
      @charla = Charla.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def charla_params
      params.fetch(:charla, {})
    end
end
