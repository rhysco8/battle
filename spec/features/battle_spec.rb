# As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our Names and seeing them

feature "asks for player names" do
  scenario "fill out Player 1 name form" do
    visit "/"
    fill_in :player_1_name, with: 'Ms Jackson'
    fill_in :player_2_name, with: 'Godzilla'

    click_button('Submit')
    expect(page).to have_content('Ms Jackson')
  end
  scenario "fill out Player 2 name form" do
    visit "/"
    fill_in :player_1_name, with: 'Ms Jackson'
    fill_in :player_2_name, with: 'Godzilla'

    click_button('Submit')
    expect(page).to have_content('Godzilla')
  end
end
