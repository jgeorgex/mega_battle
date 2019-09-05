feature 'Player 1 sees Player 2 hit points' do
  scenario 'player 1 can see player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Mittens HP = 50'
  end
end
