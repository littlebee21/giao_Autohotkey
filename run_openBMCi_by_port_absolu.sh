sudo /home/openbmc/qemu/build/arm-softmmu/qemu-system-arm -m 256 \
	-M palmetto-bmc -nographic -drive \
	file=/home/openbmc/openbmc/build/tmp/deploy/images/palmetto/obmc-phosphor-image-palmetto.static.mtd,format=raw,\
	if=mtd -net nic -net user,\
	hostfwd=:192.168.0.130:2222-:22,\
	hostfwd=:192.168.0.130:2443-:243,\
	hostname=qemu



