class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :usuario
      t.string :contraseña
      t.string :nombre
      t.integer :edad
      t.string :telefono
      t.string :correo
      t.string :direccion
      t.integer :puntos

      t.timestamps
    end
  end
end
