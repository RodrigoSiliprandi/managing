class CreateNotas < ActiveRecord::Migration[5.2]
  def change
    create_table :notas do |t|
      t.belongs_to :aluno, foreign_key: true
      t.belongs_to :trabalho, foreign_key: true
      t.belongs_to :prova, foreign_key: true

      t.timestamps
    end
  end
end
