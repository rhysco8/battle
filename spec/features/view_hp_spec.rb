# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points
#
# As Player 1,
# So I can see how close I am to losing,
# I want to see my own hit points

feature "Display Player Hit Points" do
  scenario "display Player 2's HP" do
    sign_in_and_play

    expect(page).to have_content('HP: 100', :count => 2)
  end

end
