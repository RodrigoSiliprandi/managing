Rails.application.routes.draw do
  resources :chamadas
  resources :notas
  resources :matriculas
  resources :leituras
  resources :livros
  resources :trabalhos
  resources :provas
  resources :aulas
  resources :disciplinas
  resources :professores
  resources :cursos
  resources :alunos
  resources :enderecos
  resources :cidades
  resources :estados
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
