# As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our Names and seeing them

feature "Enter player names" do
  scenario "fill out player name forms" do
    sign_in_and_play
    
    expect(page).to have_content('Ms Jackson')
    expect(page).to have_content('vs. Godzilla')
  end
end
