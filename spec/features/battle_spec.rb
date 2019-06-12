feature "Loads homepage" do
    scenario "visit homepage and see 'testing infrastructure working!'" do
        visit("/")
        expect(page).to have_content('testing infrastructure working!')
    end
end

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
