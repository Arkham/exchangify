require 'rails_helper'

RSpec.describe "Convert money from one currency to another", type: :feature do
  it "converts currencies" do
    visit "/"

    within("#new_conversion") do
      fill_in "Date", with: Date.parse("12/10/2016")
      fill_in "Amount", with: 100
      select "GBP", from: "From"
      select "USD", from: "To"
    end

    click_button 'Convert'

    expect(page).to have_content 'On 2016-10-12, 100.0 GBP are worth 122.46 USD'
  end
end
