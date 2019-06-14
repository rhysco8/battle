def sign_in_and_play
  visit "/"
  fill_in :player_1_name, with: 'Ms Jackson'
  fill_in :player_2_name, with: 'Godzilla'

  click_button('Submit')
end
