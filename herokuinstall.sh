sudo add-apt-repository "deb https://cli-assets.heroku.com/branches/stable/apt ./"
curl -L https://cli-assets.heroku.com/apt/release.key | sudo apt-key add -
sudo apt-get update
sudo apt-get install heroku
heroku login
heroku create
git push heroku master
echo "Now lets see if any instance of the app its running"
heroku ps:scale web=1
echo "Now lets visit with heroku open"
heroku open
