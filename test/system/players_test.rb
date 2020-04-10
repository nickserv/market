require 'application_system_test_case'

class PlayersTest < ApplicationSystemTestCase
  setup do
    @player = players(:one)
  end

  test 'visiting the index' do
    visit players_url
    assert_selector 'h2', text: 'Players'
  end

  test 'creating a Player' do
    Player.destroy_all

    visit players_url
    click_on 'New Player'

    fill_in 'Dodo code', with: @player.dodo_code
    fill_in 'Friend code', with: @player.friend_code
    fill_in 'Island', with: @player.island
    fill_in 'Name', with: @player.name
    fill_in 'Nickname', with: @player.nickname
    click_on 'Create Player'

    assert_text 'Player was successfully created'
    click_on 'Back'
  end

  test 'updating a Player' do
    visit players_url
    click_on 'Edit', match: :first

    fill_in 'Dodo code', with: @player.dodo_code
    fill_in 'Friend code', with: @player.friend_code
    fill_in 'Island', with: @player.island
    fill_in 'Name', with: @player.name
    fill_in 'Nickname', with: @player.nickname
    click_on 'Update Player'

    assert_text 'Player was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Player' do
    visit players_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Player was successfully destroyed'
  end
end
