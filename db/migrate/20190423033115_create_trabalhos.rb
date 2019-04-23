class CreateTrabalhos < ActiveRecord::Migration[5.2]
  def change
    create_table :trabalhos do |t|
      t.date :data_de_entrega
      t.string :descricao
      t.belongs_to :disciplina, foreign_key: true

      t.timestamps
    end
  end
end
