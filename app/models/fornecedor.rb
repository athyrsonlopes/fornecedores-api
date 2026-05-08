class Fornecedor < ApplicationRecord
  validates :nome, presence: true
  validates :cnpj, presence: true, uniqueness: true
  validates :categoria, presence: true
  validates :status, presence: true, inclusion: { in: %w[ativo inativo] }
end