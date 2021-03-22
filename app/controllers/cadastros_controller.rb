class CadastrosController < ApplicationController
  before_action :set_cadastro, only: %i[ show edit update destroy ]

  # GET /cadastros or /cadastros.json
  def index
    @cadastros = Cadastro.all
  end

  # GET /cadastros/1 or /cadastros/1.json
  def show
  end

  # GET /cadastros/new
  def new
    @cadastro = Cadastro.new
  end

  # GET /cadastros/1/edit
  def edit
  end

  # POST /cadastros or /cadastros.json
  def create
    @cadastro = Cadastro.new(cadastro_params)

    respond_to do |format|
      if @cadastro.save
        format.html { redirect_to @cadastro, notice: "Cadastro was successfully created." }
        format.json { render :show, status: :created, location: @cadastro }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cadastro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cadastros/1 or /cadastros/1.json
  def update
    respond_to do |format|
      if @cadastro.update(cadastro_params)
        format.html { redirect_to @cadastro, notice: "Cadastro was successfully updated." }
        format.json { render :show, status: :ok, location: @cadastro }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cadastro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cadastros/1 or /cadastros/1.json
  def destroy
    @cadastro.destroy
    respond_to do |format|
      format.html { redirect_to cadastros_url, notice: "Cadastro was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cadastro
      @cadastro = Cadastro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cadastro_params
      params.require(:cadastro).permit(:nome, :endereco, :cpf, :telefone, :email, :carteria)
    end
end
