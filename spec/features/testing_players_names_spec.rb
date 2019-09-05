feature 'test that expects playerts to fill in their names in a form' do
  scenario 'new player enters name in form' do
    sign_in_and_play
    expect(page).to have_content 'Dave vs. Mittens'
  end
end
