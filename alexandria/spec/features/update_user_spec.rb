require 'rails_helper'

describe "Editing a user" do

  it "updates the user and shows the user's updated details" do
    user = User.create!(user_attributes)

    visit user_url(user)

    click_link 'Edit User'

    expect(current_path).to eq(edit_user_path(user))

    expect(find_field('user_username').value).to eq(user.username)

    fill_in "User name", with: "Updated User Name"

    click_button "Update User"

    expect(current_path).to eq(user_path(user))

    expect(page).to have_text("User successfully updated!")
    #expect(page).to have_text('Account successfully updated!')
  end

  it "does not update the user if it's invalid" do
    user = User.create!(user_attributes)

    visit edit_user_url(user)

    fill_in 'User name', with: " "

    click_button "Update User"

    expect(page).to have_text('error')
  end

end
