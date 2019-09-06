feature 'so I can win a game' do
  scenario 'each player has an attack button' do
    sign_in_and_play
    click_button 'Attack_P2'
    expect(page).to have_content 'Dave attacked Mittens'
  end
  scenario 'each player has an attack button' do
    sign_in_and_play
    click_button 'Attack_P1'
    expect(page).to have_content 'Mittens attacked Dave'
  end
  scenario 'I reduce my oppenents hit points by 10 when I attack' do
    sign_in_and_play
    click_button 'Attack_P2'
    expect(page).to have_content 'Mittens HP = 40'
  end
end
