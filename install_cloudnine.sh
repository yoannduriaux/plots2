read -p "Enter your cloud9 username: " un
rvm install ruby-2.1.2
source $(rvm 2.1.2 do rvm env --path)
sudo apt-get update
sudo apt-get -y install imagemagick ruby-rmagick
npm install -g bower
bower install
bundle install --without production
cp development.sqlite.example development.sqlite
rake cloud9 username=$un
echo "Done! Run the application with 'rails s -b \$IP -p \$PORT'"

