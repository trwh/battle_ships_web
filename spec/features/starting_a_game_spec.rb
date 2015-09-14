require_relative '../spec_helper'

feature 'Starting a new game' do
  scenario 'I am asked to enter my name' do
    visit '/'
    click_link 'New Game'
    expect(page).to have_content "What's your name?"
  end

  scenario 'I enter my name' do
    visit '/new_game'
    fill_in 'name', :with => 'poohead'
    click_button 'Submit'
    expect(page).to have_content "Hello, poohead...welcome to your game of Battleships"
  end

  scenario 'I did not enter my name' do
    visit '/new_game'
    click_button 'Submit'
    expect(page).to have_content "Please enter your name or you'll be called poohead"
  end
end
# describe 'shooting at the board' do
#   it 'results in :hit if there is a ship' do
#     board = Board.new(Cell)
#     ship = Ship.destroyer
#     board.place ship, :B2, :vertically
#     expect(board.shoot_at :B3).to eq
#   end
