# README

Add a simple web app that can register and display birthdays for your friends.
All information is fake so that privacy matters can be avoided.

# Installation
If you would like to use this app yourself, follow the instructions below

1. Clone the repo
1. Install Ruby on Rails using the following website: https://guides.rubyonrails.org/install_ruby_on_rails.html

# Usage.
1. Open the root directory of birthdays.
1. run bin/rails server
1. You can the access the web app by going to [localhost:3000](http://localhost:3000)

# User registration
Currently birthdays does not support registration of new users. To register yourself do the following:
1. Run the command `bin/rails console` from the root directory of birthdays
1. Create the new user through the command
`User.create! email_address: "you@example.org", password: "your_passwd", password_confirmation: "your_passwd"`.
<br/>Here, replace `you@example.org` with your username and `your_passwd` with a new password(twice).

# The future
There are a few works of improvements in progress for the future.
1. Push notification: A way to notify a user of the app if a friend's birthday is coming up. This is a core functionality missing from this app.
1. Improved UI: I am planning to create a better user experience for this web app by using React or antoher web framework.
1. Registration page: Adding a registration page so users do not have to register via console commands.
1. Run script: A way to run the web app yourself without having to manually install Rails and running rails commands
1. Hosting the app on the internet so people can see a demo of the same.