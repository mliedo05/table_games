require "application_system_test_case"

class TableGamesTest < ApplicationSystemTestCase
  setup do
    @table_game = table_games(:one)
  end

  test "visiting the index" do
    visit table_games_url
    assert_selector "h1", text: "Table Games"
  end

  test "creating a Table game" do
    visit table_games_url
    click_on "New Table Game"

    fill_in "Board", with: @table_game.board
    fill_in "Name", with: @table_game.name
    fill_in "Pieces", with: @table_game.pieces
    fill_in "Rule", with: @table_game.rule
    click_on "Create Table game"

    assert_text "Table game was successfully created"
    click_on "Back"
  end

  test "updating a Table game" do
    visit table_games_url
    click_on "Edit", match: :first

    fill_in "Board", with: @table_game.board
    fill_in "Name", with: @table_game.name
    fill_in "Pieces", with: @table_game.pieces
    fill_in "Rule", with: @table_game.rule
    click_on "Update Table game"

    assert_text "Table game was successfully updated"
    click_on "Back"
  end

  test "destroying a Table game" do
    visit table_games_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Table game was successfully destroyed"
  end
end
