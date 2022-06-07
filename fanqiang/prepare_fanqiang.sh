
sudo  ./solve_ping.sh
echo "******  if error **************** "
echo "******  do solve_ping ******* "


source ./uninstall_fanqiang.sh
echo "******  if error ******************"
echo "******  do uninstall_fanqiang  ******* "

./install_clash.sh
echo "******  if error **************** "
echo "******  do install_clash ******* "




./config_clash.sh
echo "******  if error ************** "
echo "******  do config_clash ******* "

set +x
