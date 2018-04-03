require 'rails_helper'

describe "Viewing the list of users" do

  it "shows the users" do
    user1 = User.create!(user_attributes(username: "larry", firstname: "Larry", lastname: "stooge", email: "larry@example.com"))
    user2 = User.create!(user_attributes(username: "moe", firstname: "Moe", lastname: "stooge", email: "moe@example.com"))
    user3 = User.create!(user_attributes(username: "curly", firstname: "Curly", lastname: "stooge", email: "curly@example.com"))

    visit users_url

    expect(page).to have_link(user1.username)
    expect(page).to have_link(user2.username)
    expect(page).to have_link(user3.username)
  end

end

