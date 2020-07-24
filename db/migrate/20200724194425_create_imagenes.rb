class CreateImagenes < ActiveRecord::Migration[5.2]
  def change
    create_table :imagenes do |t|
      t.string :avatar
      t.string :title
      t.text :description
      t.references :slider, foreign_key: true
            
      t.timestamps
    end
  end
end
