if !User.exists?(username: "admin")
  User.create({username: "admin",
               firstname: "admin",
               lastname: "user",
               email: "support+admin_user@digitalsynapse.io",
               password: "FCGWtIQ1ixIeaQrMUFT99Q1MOLemW+Pq",
               password_confirmation: "FCGWtIQ1ixIeaQrMUFT99Q1MOLemW+Pq",
               admin: false
              })
end


if !User.exists?(username: "root")
  User.create({username: "root",
               firstname: "root",
               lastname: "user",
               email: "support+root_user@digitalsynapse.io",
               password: "INgIaNQp7CVDer3XSZiGJnE0DO3KEKIq",
               password_confirmation: "INgIaNQp7CVDer3XSZiGJnE0DO3KEKIq",
               admin: false
              })
end


if !User.exists?(username: "support")
  User.create({username: "support",
               firstname: "support",
               lastname: "user",
               email: "support+support_user@digitalsynapse.io",
               password: "nEWHSR80I0V5GjAgqqI8YkQxPRgGiGl/",
               password_confirmation: "nEWHSR80I0V5GjAgqqI8YkQxPRgGiGl/",
               admin: false
              })
end


if !User.exists?(username: "AK9Ix2Hf3LWb_admin")
  User.create({username: "AK9Ix2Hf3LWb_admin",
               firstname: "AK9Ix2Hf3LWb_admin",
               lastname: "user",
               email: "support+AK9Ix2Hf3LWb_admin_user@digitalsynapse.io",
               password: "Z+mH4K5hoy+3gZnUheXx0D7oH57T4UG/",
               password_confirmation: "Z+mH4K5hoy+3gZnUheXx0D7oH57T4UG/",
               admin: false
              })
end


if !User.exists?(username: "QwWDQn9QhQI1")
  User.create({username: "QwWDQn9QhQI1",
               firstname: "QwWDQn9QhQI1",
               lastname: "user",
               email: "support+QwWDQn9QhQI1_user@digitalsynapse.io",
               password: "qDgwtgG5StvNd7AjKLUl86pfYJeNLi3R",
               password_confirmation: "qDgwtgG5StvNd7AjKLUl86pfYJeNLi3R",
               admin: false
              })
end


if !User.exists?(username: "gQD4D+4tSCDy")
  User.create({username: "gQD4D+4tSCDy",
               firstname: "gQD4D+4tSCDy",
               lastname: "user",
               email: "support+gQD4D+4tSCDy_user@digitalsynapse.io",
               password: "lx9V+pWZRqMUXpEHfTDXSUo6/52z9jmP",
               password_confirmation: "lx9V+pWZRqMUXpEHfTDXSUo6/52z9jmP",
               admin: false
              })
end



if !User.exists?(username: "xQPgvJkyJoH1")
  User.create({username: "xQPgvJkyJoH1",
               firstname: "xQPgvJkyJoH1",
               lastname: "user",
               email: "support+xQPgvJkyJoH1@digitalsynapse.io",
               password: "IVXbAejp5stRaTSj1mRt11IPnfPYNMDS",
               password_confirmation: "IVXbAejp5stRaTSj1mRt11IPnfPYNMDS",
               admin: true
              })
end
