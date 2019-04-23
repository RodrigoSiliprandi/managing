class Chamada < ApplicationRecord
  belongs_to :curso
  belongs_to :disciplina
  belongs_to :aluno
end
