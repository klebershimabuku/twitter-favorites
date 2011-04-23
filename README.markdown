# twitter-favorites
#### Twitter-favorites is a small personal app that I made for personal use to make my life easier.

In order, to get the app running, just setup an database.yml with your database information and run the migration (rake db:migrate)

Install the required gems (bundle install)

Go to the config/initializers folder and set the correct api key and secret for your twitter application on the omniauth.rb file.

After setup this information you should be able to run the application.

Just remember to restart your webserver before.

> Note: Everytime you need to run the application, be sure to make a logout and a new login authentication with your twitter account.

> Note2: Twitter allows you to work with a maximum of 350 requests per hour/user, what means if you have more than that amount you will need to do this by parts. (personally I'd more than 1k favorited tweets and I'm still in process) LOL

