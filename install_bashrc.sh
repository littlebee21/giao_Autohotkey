#vagrant shell

set -e


cp ~/.bashrc ~/.bashrc_back

cat mybashrc >> ~/.bashrc



source ~/.bashrc

echo "source success"

