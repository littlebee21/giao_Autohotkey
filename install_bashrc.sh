#vagrant shell

set -e


cp ~/.bashrc ~/.bashrc_back

sudo cp ./full_bashrc ~/.bashrc

source ~/.bashrc

echo "source success"

