class CreateClientes < ActiveRecord::Migration[6.1]
  def change
    create_table :clientes do |t|
      t.string :nome
      t.integer :idade
      t.string :email

      t.timestamps
    end
  end
end
