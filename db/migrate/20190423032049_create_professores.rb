class CreateProfessores < ActiveRecord::Migration[5.2]
  def change
    create_table :professores do |t|
      t.string :nome
      t.string :documento
      t.string :email
      t.string :telefone
      t.belongs_to :endereco, foreign_key: true

      t.timestamps
    end
  end
end
