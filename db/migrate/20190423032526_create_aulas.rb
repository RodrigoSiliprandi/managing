class CreateAulas < ActiveRecord::Migration[5.2]
  def change
    create_table :aulas do |t|
      t.date :data
      t.string :objetivo
      t.boolean :realizado
      t.belongs_to :disciplina, foreign_key: true

      t.timestamps
    end
  end
end
