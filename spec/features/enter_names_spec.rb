
feature 'names entered into form' do
  scenario 'players names are entered into a form' do
    sign_in_and_play
    expect(page).to have_text('Alice Bob')
  end
end

feature 'see player2 hit points'do
  scenario 'player1 to be able to view player2 hit points'do
    sign_in_and_play
    find('.hitpoints').visible?
    within('.hitpoints') { expect(page).to have_text(23) }
  end
end

feature 'player1 attacks player2' do
  scenario 'player1 have a confirmation after the attack' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_text('Alice attacks Bob')
  end
end
