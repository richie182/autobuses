class CreateTerminalLlegadas < ActiveRecord::Migration
  def change
    create_table :terminal_llegadas do |t|
      t.string :idterminal2
      t.string :nombreterminal2
      t.string :telefono2
      t.string :direccion2

      t.timestamps
    end
  end
end
