require 'rails_helper'

RSpec.feature "ProductDetails", type: :feature, js: true do

  # SETUP
  before :each do
    @category = Category.create! name: 'Apparel'

    10.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    end
  end

  scenario "They see all products" do
    #visit the home page
    visit root_path

    #click on the first product details link
    first('article.product').find_link('Details').click

    #checking text in description
    expect(page).to have_text ('Description')

    #checking screenshot for confirmation 
    page.save_screenshot

  end


end