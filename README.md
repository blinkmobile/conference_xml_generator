# Conference XML Generator #
This tool is a simple CRUD application that allows users to input information related to conference agenda's and then download an XML representation of that conference.

It was created mid 2011 to help with the influx of conferences Blink Mobile was dealing with at the time.

It is also one of the first Rail's apps that I ever worked on and was extremely heavily iterated upon over the first few months of its life (I believe this is the third major overhaul of it), so there is lots of legacy (and even more just generally bad) code floating around the repo. I have also gone through and ripped out anything that looks sensitive to Blink Mobile, so hopefully nothing is broken. Also, there is no test suite. Never had enough time to worry about making one.

## To run on localhost ##

Follow instructions appropriate to your system

### Windows ###
1. Re-evaluate your choices in life
2. Install Linux OR Install Vagrant and configure an appropriate environment
3. Follow OSX instructions

### OSX ###
1. Ensure your system has ruby + rubygems + bundler installed
2. Clone the project to your localhost
3. Run `bundle install` in the project directory
4. Run `rake db:migrate` in the project directory
4. Run `rails s` in the project directory
5. Browse to http://localhost:3000

## To run on Heroku ##
It's been a long time since I had to do this, so the steps may have changed a little.

1. Sign up for an account at https://heroku.com/
2. Install the Heroku Toolbelt - https://toolbelt.heroku.com/
3. From your console, run `heroku login` and provide your credentials
4. From your console, `heroku create`


## To import the XML into the BMP ##
### Localhost ###
Easiest method will be to just copy the XML file into an interaction and save it. If the XML is too large, then you will need to make your localhost available to the internet temporarily to follow the public method.
### Public ###
1. Fetch the data at the URL given in the tool.

## Notes ##
- Default Credentials
	- Username: admin@example.com
	- Password: password
- If you want the new user functionality to work correctly, you will have to configure the email sender details
	- config/initializers/devise.rb - config.mail_sender
	- config/application.rb - config.action_mailer.default_url_options
- If deploying to something other than your localhost you should change the secret token
	- config/initalizers/secret_token.rb
- If you want to use something other than SQLite for the DB edit config/database.yml (not needed for Heroku)
- This has not been touched since the end of 2011. You should apply the appropriate Rails security updates as needed.

## Secrets! ##
Hidden inside this application, for those who are Rails developers, there is a disabled feature that allowed you to automatically generate/scaffold answerSpace's within the BMP.

To use this, you will need to activate the route to the feature and then fill in the blank routes along with your username/password to the platform.

It was about 95% complete when I stopped working on it, but that was around the end of 2011. The platform has changed pretty significantly and I would expect it to be a bit of work to get it functional. It's not really recommended for use.

