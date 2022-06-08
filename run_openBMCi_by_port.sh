#cd build
sudo ~/qemu-system-arm -m 256 \
	-M romulus-bmc -nographic -drive \
	file=~/openbmc/build/tmp/deploy/images/romulus/obmc-phosphor-image-romulus.static.mtd,format=raw,\
	if=mtd -net nic -net user,\
	hostfwd=:127.0.0.1:2222-:22,\
	hostfwd=:127.0.0.1:2443-:443,\
	hostname=qemu

