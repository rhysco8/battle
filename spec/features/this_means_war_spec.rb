# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation

feature "attack other player" do
  scenario "player 1 attacks player 2" do
    sign_in_and_play

    click_on "Attack!"
    expect(page).to have_content('Ms Jackson suplexed Godzilla')
  end
end
