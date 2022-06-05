set -e

cd /work_mount/siwei
git add .
git commit -m "all"
git push 


echo "siwei push success"


cd /work_mount/giaoAutohotkey
git add .
git commit -m "all"
git push 


echo "giaoAutohotkey push success"

cd /work_mount/picmind
git add .
git commit -m "all"
git push 


echo "picmind push success"
