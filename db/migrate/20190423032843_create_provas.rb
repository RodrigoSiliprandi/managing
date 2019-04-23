class CreateProvas < ActiveRecord::Migration[5.2]
  def change
    create_table :provas do |t|
      t.boolean :g1
      t.boolean :g2
      t.boolean :prova_livro
      t.boolean :sub_g1
      t.boolean :sub_g2
      t.belongs_to :disciplina, foreign_key: true

      t.timestamps
    end
  end
end
