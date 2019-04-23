require 'test_helper'

class ChamadasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chamada = chamadas(:one)
  end

  test "should get index" do
    get chamadas_url
    assert_response :success
  end

  test "should get new" do
    get new_chamada_url
    assert_response :success
  end

  test "should create chamada" do
    assert_difference('Chamada.count') do
      post chamadas_url, params: { chamada: { aluno_id: @chamada.aluno_id, curso_id: @chamada.curso_id, data: @chamada.data, disciplina_id: @chamada.disciplina_id, presenca: @chamada.presenca } }
    end

    assert_redirected_to chamada_url(Chamada.last)
  end

  test "should show chamada" do
    get chamada_url(@chamada)
    assert_response :success
  end

  test "should get edit" do
    get edit_chamada_url(@chamada)
    assert_response :success
  end

  test "should update chamada" do
    patch chamada_url(@chamada), params: { chamada: { aluno_id: @chamada.aluno_id, curso_id: @chamada.curso_id, data: @chamada.data, disciplina_id: @chamada.disciplina_id, presenca: @chamada.presenca } }
    assert_redirected_to chamada_url(@chamada)
  end

  test "should destroy chamada" do
    assert_difference('Chamada.count', -1) do
      delete chamada_url(@chamada)
    end

    assert_redirected_to chamadas_url
  end
end
