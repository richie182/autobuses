class CreateBoletos < ActiveRecord::Migration
  def change
    create_table :boletos do |t|
      t.integer :folio
      t.string :usuario
      t.string :id_trayecto
      t.datetime :fecha_venta
      t.integer :total
      t.integer :puntos

      t.timestamps
    end
  end
end
