json.extract! nota, :id, :aluno_id, :trabalho_id, :prova_id, :created_at, :updated_at
json.url nota_url(nota, format: :json)
