require 'rails_helper'

describe "User can click find nearest station" do
  scenario "and see information on closest electric fuel station" do
    visit '/'

    find('#location', :text => 'Turing').click
    click_button("Find Nearest Station")

    expect(current_path).to eq('/search')

    expect(page).to have_content('Seventeenth Street Plaza')
    expect(page).to have_content('1225 17th St.')
    expect(page).to have_content('Denver')
    expect(page).to have_content('CO')
    expect(page).to have_content('80202')
    expect(page).to have_content('ELEC')
    expect(page).to have_content('MO: Not Specified; TU: Not Specified; WE: Not Specified; TH: Not Specified; FR: Not Specified; SA: Not Specified; SU: Not Specified')

    expect(page).to have_content('0.081 miles')
    expect(page).to have_content('00:00:40')
    expect(page).to have_content('Start out going southeast on 17th St toward Larimer St/CO-33.')
  end
end
