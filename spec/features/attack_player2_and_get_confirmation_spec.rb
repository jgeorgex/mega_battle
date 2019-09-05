feature 'so I can win a game' do
  scenario 'each player has an attack button' do
    sign_in_and_play
    click_button 'Attack_P2'
    expect(page).to have_content 'Player1 attacked Player2'
  end
end
