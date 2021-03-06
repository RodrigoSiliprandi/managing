class ProvasController < ApplicationController
  before_action :set_prova, only: [:show, :edit, :update, :destroy]

  # GET /provas
  # GET /provas.json
  def index
    @provas = Prova.all
  end

  # GET /provas/1
  # GET /provas/1.json
  def show
  end

  # GET /provas/new
  def new
    @prova = Prova.new
  end

  # GET /provas/1/edit
  def edit
  end

  # POST /provas
  # POST /provas.json
  def create
    @prova = Prova.new(prova_params)

    respond_to do |format|
      if @prova.save
        format.html { redirect_to @prova, notice: 'Prova was successfully created.' }
        format.json { render :show, status: :created, location: @prova }
      else
        format.html { render :new }
        format.json { render json: @prova.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /provas/1
  # PATCH/PUT /provas/1.json
  def update
    respond_to do |format|
      if @prova.update(prova_params)
        format.html { redirect_to @prova, notice: 'Prova was successfully updated.' }
        format.json { render :show, status: :ok, location: @prova }
      else
        format.html { render :edit }
        format.json { render json: @prova.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /provas/1
  # DELETE /provas/1.json
  def destroy
    @prova.destroy
    respond_to do |format|
      format.html { redirect_to provas_url, notice: 'Prova was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prova
      @prova = Prova.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prova_params
      params.require(:prova).permit(:g1, :g2, :prova_livro, :sub_g1, :sub_g2, :disciplina_id)
    end
end
