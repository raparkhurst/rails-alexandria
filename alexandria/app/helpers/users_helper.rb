module UsersHelper


  def profile_image_fullsize(user)
    url = "https://secure.gravatar.com/avatar/#{user.gravatar_id}"
    image_tag(url, alt: user.username,
              alt: "User Logo",
              width: '160',
              height: '160',
              class: "profile-user-img img-responsive img-circle")
  end



  def profile_image_navbar(user)
    url = "https://secure.gravatar.com/avatar/#{user.gravatar_id}"
    image_tag(url, alt: user.username,
              alt: "User Logo",
              width: '48',
              height: '48',
              class: "user-image")
  end

end
