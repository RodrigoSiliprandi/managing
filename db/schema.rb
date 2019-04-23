# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_04_23_034424) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alunos", force: :cascade do |t|
    t.string "nome"
    t.string "documento"
    t.integer "telefone"
    t.string "pai"
    t.string "mae"
    t.bigint "endereco_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["endereco_id"], name: "index_alunos_on_endereco_id"
  end

  create_table "aulas", force: :cascade do |t|
    t.date "data"
    t.string "objetivo"
    t.boolean "realizado"
    t.bigint "disciplina_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["disciplina_id"], name: "index_aulas_on_disciplina_id"
  end

  create_table "chamadas", force: :cascade do |t|
    t.bigint "curso_id"
    t.bigint "disciplina_id"
    t.bigint "aluno_id"
    t.date "data"
    t.boolean "presenca"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aluno_id"], name: "index_chamadas_on_aluno_id"
    t.index ["curso_id"], name: "index_chamadas_on_curso_id"
    t.index ["disciplina_id"], name: "index_chamadas_on_disciplina_id"
  end

  create_table "cidades", force: :cascade do |t|
    t.string "nome"
    t.bigint "estado_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["estado_id"], name: "index_cidades_on_estado_id"
  end

  create_table "cursos", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "disciplinas", force: :cascade do |t|
    t.string "nome"
    t.string "perido"
    t.bigint "professor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["professor_id"], name: "index_disciplinas_on_professor_id"
  end

  create_table "enderecos", force: :cascade do |t|
    t.string "rua"
    t.integer "numero"
    t.integer "cep"
    t.bigint "cidade_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cidade_id"], name: "index_enderecos_on_cidade_id"
  end

  create_table "estados", force: :cascade do |t|
    t.string "nome"
    t.string "uf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leituras", force: :cascade do |t|
    t.bigint "livro_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["livro_id"], name: "index_leituras_on_livro_id"
  end

  create_table "livros", force: :cascade do |t|
    t.string "titulo"
    t.string "autor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matriculas", force: :cascade do |t|
    t.bigint "aluno_id"
    t.bigint "disciplina_id"
    t.string "periodo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aluno_id"], name: "index_matriculas_on_aluno_id"
    t.index ["disciplina_id"], name: "index_matriculas_on_disciplina_id"
  end

  create_table "notas", force: :cascade do |t|
    t.bigint "aluno_id"
    t.bigint "trabalho_id"
    t.bigint "prova_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aluno_id"], name: "index_notas_on_aluno_id"
    t.index ["prova_id"], name: "index_notas_on_prova_id"
    t.index ["trabalho_id"], name: "index_notas_on_trabalho_id"
  end

  create_table "professores", force: :cascade do |t|
    t.string "nome"
    t.string "documento"
    t.string "email"
    t.string "telefone"
    t.bigint "endereco_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["endereco_id"], name: "index_professores_on_endereco_id"
  end

  create_table "provas", force: :cascade do |t|
    t.boolean "g1"
    t.boolean "g2"
    t.boolean "prova_livro"
    t.boolean "sub_g1"
    t.boolean "sub_g2"
    t.bigint "disciplina_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["disciplina_id"], name: "index_provas_on_disciplina_id"
  end

  create_table "trabalhos", force: :cascade do |t|
    t.date "data_de_entrega"
    t.string "descricao"
    t.bigint "disciplina_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["disciplina_id"], name: "index_trabalhos_on_disciplina_id"
  end

  add_foreign_key "alunos", "enderecos"
  add_foreign_key "aulas", "disciplinas"
  add_foreign_key "chamadas", "alunos"
  add_foreign_key "chamadas", "cursos"
  add_foreign_key "chamadas", "disciplinas"
  add_foreign_key "cidades", "estados"
  add_foreign_key "disciplinas", "professores"
  add_foreign_key "enderecos", "cidades"
  add_foreign_key "leituras", "livros"
  add_foreign_key "matriculas", "alunos"
  add_foreign_key "matriculas", "disciplinas"
  add_foreign_key "notas", "alunos"
  add_foreign_key "notas", "provas"
  add_foreign_key "notas", "trabalhos"
  add_foreign_key "professores", "enderecos"
  add_foreign_key "provas", "disciplinas"
  add_foreign_key "trabalhos", "disciplinas"
end
