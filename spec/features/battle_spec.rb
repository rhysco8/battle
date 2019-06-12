feature "Loads homepage" do
    scenario "visit homepage and see 'testing infrastructure working!'" do
        visit("/")
        expect(page).to have_content('testing infrastructure working!')
    end
end 



