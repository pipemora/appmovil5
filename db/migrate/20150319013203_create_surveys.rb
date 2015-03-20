class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :genero
      t.integer :edad
      t.integer :presupuesto
      t.string :compania
      t.string :factores
      t.string :importante
      t.string :color
      t.string :lineas
      t.string :economizar
      t.string :dispuesto
      t.string :eres

      t.timestamps null: false
    end
  end
end
