class CreateCadastros < ActiveRecord::Migration[6.1]
  def change
    create_table :cadastros do |t|
      t.string :nome
      t.string :endereco
      t.string :cpf
      t.string :telefone
      t.string :email
      t.string :carteria

      t.timestamps
    end
  end
end
