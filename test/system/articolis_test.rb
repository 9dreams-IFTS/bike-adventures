require "application_system_test_case"

class ArticolisTest < ApplicationSystemTestCase
  setup do
    @articoli = articolis(:one)
  end

  test "visiting the index" do
    visit articolis_url
    assert_selector "h1", text: "Articolis"
  end

  test "should create articoli" do
    visit articolis_url
    click_on "New articoli"

    fill_in "Descrizione", with: @articoli.descrizione
    fill_in "Prezzo", with: @articoli.prezzo
    fill_in "Titolo", with: @articoli.titolo
    click_on "Create Articoli"

    assert_text "Articoli was successfully created"
    click_on "Back"
  end

  test "should update Articoli" do
    visit articoli_url(@articoli)
    click_on "Edit this articoli", match: :first

    fill_in "Descrizione", with: @articoli.descrizione
    fill_in "Prezzo", with: @articoli.prezzo
    fill_in "Titolo", with: @articoli.titolo
    click_on "Update Articoli"

    assert_text "Articoli was successfully updated"
    click_on "Back"
  end

  test "should destroy Articoli" do
    visit articoli_url(@articoli)
    click_on "Destroy this articoli", match: :first

    assert_text "Articoli was successfully destroyed"
  end
end
