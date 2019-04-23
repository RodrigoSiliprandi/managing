json.extract! aluno, :id, :nome, :documento, :telefone, :pai, :mae, :endereco_id, :created_at, :updated_at
json.url aluno_url(aluno, format: :json)
