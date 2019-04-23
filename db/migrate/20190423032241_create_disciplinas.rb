class CreateDisciplinas < ActiveRecord::Migration[5.2]
  def change
    create_table :disciplinas do |t|
      t.string :nome
      t.string :perido
      t.belongs_to :professor, foreign_key: true

      t.timestamps
    end
  end
end
