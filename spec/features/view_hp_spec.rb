# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points
#
# As Player 1,
# So I can see how close I am to losing,
# I want to see my own hit points

feature "Display Player Hit Points" do
  scenario "display Player 2's HP" do
    visit "/"
    fill_in :player_1_name, with: 'Ms Jackson'
    fill_in :player_2_name, with: 'Godzilla'

    click_button('Submit')
    expect(page).to have_content('HP: 100')
  end
end
