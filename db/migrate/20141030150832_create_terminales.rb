class CreateTerminales < ActiveRecord::Migration
  def change
    create_table :terminales do |t|
      t.string :idterminal
      t.string :nombreterminal
      t.string :telefono
      t.string :direccion

      t.timestamps
    end
  end
end
