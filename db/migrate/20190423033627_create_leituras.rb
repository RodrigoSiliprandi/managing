class CreateLeituras < ActiveRecord::Migration[5.2]
  def change
    create_table :leituras do |t|
      t.belongs_to :livro, foreign_key: true

      t.timestamps
    end
  end
end
