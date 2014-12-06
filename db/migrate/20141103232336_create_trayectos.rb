class CreateTrayectos < ActiveRecord::Migration
  def change
    create_table :trayectos do |t|
      t.string :id_trayecto
      t.string :idterminal
      t.string :idterminal2
      t.datetime :hora_salida
      t.datetime :hora_llegada
      t.integer :precio
      t.integer :puntos
      t.string :idautobus

      t.timestamps
    end
  end
end
