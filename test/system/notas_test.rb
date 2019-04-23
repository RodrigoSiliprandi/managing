require "application_system_test_case"

class NotasTest < ApplicationSystemTestCase
  setup do
    @nota = notas(:one)
  end

  test "visiting the index" do
    visit notas_url
    assert_selector "h1", text: "Notas"
  end

  test "creating a Nota" do
    visit notas_url
    click_on "New Nota"

    fill_in "Aluno", with: @nota.aluno_id
    fill_in "Prova", with: @nota.prova_id
    fill_in "Trabalho", with: @nota.trabalho_id
    click_on "Create Nota"

    assert_text "Nota was successfully created"
    click_on "Back"
  end

  test "updating a Nota" do
    visit notas_url
    click_on "Edit", match: :first

    fill_in "Aluno", with: @nota.aluno_id
    fill_in "Prova", with: @nota.prova_id
    fill_in "Trabalho", with: @nota.trabalho_id
    click_on "Update Nota"

    assert_text "Nota was successfully updated"
    click_on "Back"
  end

  test "destroying a Nota" do
    visit notas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Nota was successfully destroyed"
  end
end
