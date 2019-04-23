class Nota < ApplicationRecord
  belongs_to :aluno
  belongs_to :trabalho
  belongs_to :prova
end
