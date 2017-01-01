echo "Let's intall Heroku in your workspace..."
sudo add-apt-repository "deb https://cli-assets.heroku.com/branches/stable/apt ./"
curl -L https://cli-assets.heroku.com/apt/release.key | sudo apt-key add -
sudo apt-get update
sudo apt-get install heroku
echo "Let's login..."
heroku login
echo "Let's Create a new app with a random name..."
heroku create
echo "Let's deploy!"
echo "It Sending... or source code to Heroku!"
git push heroku master
echo "Let's ensure that at least one instance of the app is running:"
heroku ps:scale web=1
echo "Now let's visit with heroku open..."
heroku open
echo "Let's see the app logs in realtime...."
heroku logs --tail
