class CreateAlumnos < ActiveRecord::Migration
  def change
    create_table :alumnos do |t|
      t.string :codigo
      t.string :nombre
      t.string :dias
      t.string :hora
      t.string :notificacion

      t.timestamps
    end
  end
end
