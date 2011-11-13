class CreateEstacionamientos < ActiveRecord::Migration
  def change
    create_table :estacionamientos do |t|
      t.string :local
      t.string :direccion
      t.integer :capacidad
      t.integer :disponible
      t.string :mensaje

      t.timestamps
    end
  end
end
