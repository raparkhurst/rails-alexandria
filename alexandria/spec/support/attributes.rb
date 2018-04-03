def book_attributes(overrides = {})
  {
      name: "Harry Potter And the Chamber of Secrets",
      chapter: true,
      description: "A book about harry potter's second year at Hogwarts!",
      paid: false,
      date_start: Date.today - 90.days,
      date_end: Date.today - 50.days,
      part_of_series: false
  }.merge(overrides)
end


def book_attributes_multiple(overrides = {})

end


def user_attributes(overrides = {})
  {
    username: "Example_User",
    email: "user@example.com",
    firstname: "test",
    lastname: "user",
    password: "secret098EDF!@#",
    password_confirmation: "secret098EDF!@#"
  }.merge(overrides)
end