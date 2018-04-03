require 'rails_helper'

describe "Viewing a user's profile page" do

  it "shows the user's details" do
    user = User.create!(user_attributes)

    visit user_url(user)

    #expect(page).to have_text(user.firstname)
    #expect(page).to have_text(user.email)

    expect(find_field('user_username').value).to eq(user.username)
    expect(find_field('user_email').value).to eq(user.email)
  end

end

