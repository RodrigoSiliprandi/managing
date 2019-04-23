class CreateChamadas < ActiveRecord::Migration[5.2]
  def change
    create_table :chamadas do |t|
      t.belongs_to :curso, foreign_key: true
      t.belongs_to :disciplina, foreign_key: true
      t.belongs_to :aluno, foreign_key: true
      t.date :data
      t.boolean :presenca

      t.timestamps
    end
  end
end
