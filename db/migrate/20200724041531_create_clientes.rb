class CreateClientes < ActiveRecord::Migration[5.2]
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :email
      t.bigint :telefono
      t.string :ciudad
      t.timestamps
    end
  end
end
