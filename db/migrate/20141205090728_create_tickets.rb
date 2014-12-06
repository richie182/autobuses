class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :folio
      t.string :nombre
      t.string :correo
      t.datetime :vendido
      t.string :trayecto
      t.integer :precio
      t.integer :puntos
      t.string :viaje
      t.string :vendido

      t.timestamps
    end
  end
end
