#vagrant shell

set -e


cp ~/.bashrc ~/.bashrc_back

cat mybashrc >> ~/.bashrc



sudo source ~/.bashrc

echo "source success"

