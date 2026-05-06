class FornecedoresController < ApplicationController
  before_action :set_fornecedor, only: [:show, :update, :destroy]

  def index
    @fornecedores = Fornecedor.all
    render json: @fornecedores
  end

  def show
    render json: @fornecedor
  end

  def create 
    @fornecedor = Fornecedor.new(fornecedor_params)
    if @fornecedor.save
      render json: @fornecedor, status: :created 
    else 
      render json: @fornecedor.errors, status: :unprocessable_entity  
    end
  end

  def update
    if @fornecedor.update(fornecedor_params)
      render json: @fornecedor
    else 
      render json: @fornecedor.erros, status: :unprocessable_entity
    end 
  end

  def destroy
    @fornecedor.destroy
    head :no_content
  end

  private 

  def set_fornecedor 
    @fornecedor = Fornecedor.find(params[:id])
  end

  def fornecedor_params
    params.require(:fornecedor).permit(:nome, :cnpj, :categoria, :status)
  end
end
