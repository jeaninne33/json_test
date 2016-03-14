class CreatePalabras < ActiveRecord::Migration
  def change
    create_table :palabras do |t|
      t.string :nombre
      t.string :descripcion

      t.timestamps
    end
  end
end
