dd if=/dev/zero of=test.tst bs=4096 count=100000 >> measure_ssd.log
sleep 2
dd if=test.tst of=/dev/null bs=4096 count=100000 >> measure_ssd.log
