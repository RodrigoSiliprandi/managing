class LeiturasController < ApplicationController
  before_action :set_leitura, only: [:show, :edit, :update, :destroy]

  # GET /leituras
  # GET /leituras.json
  def index
    @leituras = Leitura.all
  end

  # GET /leituras/1
  # GET /leituras/1.json
  def show
  end

  # GET /leituras/new
  def new
    @leitura = Leitura.new
  end

  # GET /leituras/1/edit
  def edit
  end

  # POST /leituras
  # POST /leituras.json
  def create
    @leitura = Leitura.new(leitura_params)

    respond_to do |format|
      if @leitura.save
        format.html { redirect_to @leitura, notice: 'Leitura was successfully created.' }
        format.json { render :show, status: :created, location: @leitura }
      else
        format.html { render :new }
        format.json { render json: @leitura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leituras/1
  # PATCH/PUT /leituras/1.json
  def update
    respond_to do |format|
      if @leitura.update(leitura_params)
        format.html { redirect_to @leitura, notice: 'Leitura was successfully updated.' }
        format.json { render :show, status: :ok, location: @leitura }
      else
        format.html { render :edit }
        format.json { render json: @leitura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leituras/1
  # DELETE /leituras/1.json
  def destroy
    @leitura.destroy
    respond_to do |format|
      format.html { redirect_to leituras_url, notice: 'Leitura was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leitura
      @leitura = Leitura.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def leitura_params
      params.require(:leitura).permit(:livro_id)
    end
end
