class CreateFornecedors < ActiveRecord::Migration[8.0]
  def change
    create_table :fornecedors do |t|
      t.string :nome
      t.string :cnpj
      t.string :categoria
      t.string :status

      t.timestamps
    end
  end
end
