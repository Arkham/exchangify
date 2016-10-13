require 'rails_helper'

RSpec.describe "Convert money from one currency to another", type: :feature do
  it "signs me in" do
    visit "/"

    within("#convert_money") do
      fill_in "Date", with: Date.parse("12/10/2016")
      fill_in "Amount", with: 100
      select "GBP", from: "From"
      select "USD", from: "To"
    end

    click_button 'Convert'

    expect(page).to have_content 'On that date, 100 GBP were worth 112.02 USD'
  end
end
