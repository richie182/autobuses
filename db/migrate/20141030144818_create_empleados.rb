class CreateEmpleados < ActiveRecord::Migration
  def change
    create_table :empleados do |t|
      t.string :usuario
      t.string :contraseña
      t.string :nombre
      t.string :telefono
      t.string :corre
      t.string :direccion
      t.integer :hrtrabajada
      t.string :categoria

      t.timestamps
    end
  end
end
