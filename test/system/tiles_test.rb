require "application_system_test_case"

class TilesTest < ApplicationSystemTestCase
  setup do
    @tile = tiles(:one)
  end

  test "visiting the index" do
    visit tiles_url
    assert_selector "h1", text: "Tiles"
  end

  test "should create tile" do
    visit tiles_url
    click_on "New tile"

    fill_in "Color", with: @tile.color
    fill_in "Solution set", with: @tile.solution_set
    fill_in "Word", with: @tile.word
    click_on "Create Tile"

    assert_text "Tile was successfully created"
    click_on "Back"
  end

  test "should update Tile" do
    visit tile_url(@tile)
    click_on "Edit this tile", match: :first

    fill_in "Color", with: @tile.color
    fill_in "Solution set", with: @tile.solution_set
    fill_in "Word", with: @tile.word
    click_on "Update Tile"

    assert_text "Tile was successfully updated"
    click_on "Back"
  end

  test "should destroy Tile" do
    visit tile_url(@tile)
    click_on "Destroy this tile", match: :first

    assert_text "Tile was successfully destroyed"
  end
end
