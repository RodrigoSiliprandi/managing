require "application_system_test_case"

class ProvasTest < ApplicationSystemTestCase
  setup do
    @prova = provas(:one)
  end

  test "visiting the index" do
    visit provas_url
    assert_selector "h1", text: "Provas"
  end

  test "creating a Prova" do
    visit provas_url
    click_on "New Prova"

    fill_in "Disciplina", with: @prova.disciplina_id
    check "G1" if @prova.g1
    check "G2" if @prova.g2
    check "Prova livro" if @prova.prova_livro
    check "Sub g1" if @prova.sub_g1
    check "Sub g2" if @prova.sub_g2
    click_on "Create Prova"

    assert_text "Prova was successfully created"
    click_on "Back"
  end

  test "updating a Prova" do
    visit provas_url
    click_on "Edit", match: :first

    fill_in "Disciplina", with: @prova.disciplina_id
    check "G1" if @prova.g1
    check "G2" if @prova.g2
    check "Prova livro" if @prova.prova_livro
    check "Sub g1" if @prova.sub_g1
    check "Sub g2" if @prova.sub_g2
    click_on "Update Prova"

    assert_text "Prova was successfully updated"
    click_on "Back"
  end

  test "destroying a Prova" do
    visit provas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Prova was successfully destroyed"
  end
end
