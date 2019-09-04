feature 'Player 1 sees Player 2 hit points' do
  scenario 'player 1 can see player 2 hit points' do
    visit('/')
    fill_in :player_1_name, with: 'Dave'
    fill_in :player_2_name, with: 'Mittens'
    
    click_button 'Submit'
    expect(page).to have_content 'Mittens 0'
  end
end
