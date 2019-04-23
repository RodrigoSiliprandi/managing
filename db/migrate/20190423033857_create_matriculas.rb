class CreateMatriculas < ActiveRecord::Migration[5.2]
  def change
    create_table :matriculas do |t|
      t.belongs_to :aluno, foreign_key: true
      t.belongs_to :disciplina, foreign_key: true
      t.string :periodo

      t.timestamps
    end
  end
end
