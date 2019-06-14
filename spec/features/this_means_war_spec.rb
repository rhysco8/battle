# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation

# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP by 10

feature "attack other player" do
  scenario "player 1 attacks player 2" do
    sign_in_and_play

    click_on "Attack!"
    expect(page).to have_content('Ms Jackson suplexed Godzilla')
  end

  scenario "reduce player 2 HP by 10" do
    sign_in_and_play
    click_on "Attack!"
    click_on "Next move!"
    expect(page).to have_content("Godzilla HP: 90")
  end
end
