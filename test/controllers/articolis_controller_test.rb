require "test_helper"

class ArticolisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @articoli = articolis(:one)
  end

  test "should get index" do
    get articolis_url
    assert_response :success
  end

  test "should get new" do
    get new_articoli_url
    assert_response :success
  end

  test "should create articoli" do
    assert_difference("Articoli.count") do
      post articolis_url, params: { articoli: { descrizione: @articoli.descrizione, prezzo: @articoli.prezzo, titolo: @articoli.titolo } }
    end

    assert_redirected_to articoli_url(Articoli.last)
  end

  test "should show articoli" do
    get articoli_url(@articoli)
    assert_response :success
  end

  test "should get edit" do
    get edit_articoli_url(@articoli)
    assert_response :success
  end

  test "should update articoli" do
    patch articoli_url(@articoli), params: { articoli: { descrizione: @articoli.descrizione, prezzo: @articoli.prezzo, titolo: @articoli.titolo } }
    assert_redirected_to articoli_url(@articoli)
  end

  test "should destroy articoli" do
    assert_difference("Articoli.count", -1) do
      delete articoli_url(@articoli)
    end

    assert_redirected_to articolis_url
  end
end
