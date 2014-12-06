class CreateCoches < ActiveRecord::Migration
  def change
    create_table :coches do |t|
      t.string :matricula
      t.integer :user_id

      t.timestamps
    end
  end
end
