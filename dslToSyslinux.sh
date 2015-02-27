 #!/bin/bash
 
 #mount /tmp/dsl-3.2.iso /tmp/iso -o loop
 
 sudo mount /dev/sdb1 /mnt/temp
 sudo cp -vr /tmp/iso/* /mnt/temp
 sudo mv /mnt/temp/boot/isolinux/* /mnt/temp/
 sudo mv /mnt/temp/isolinux.cfg /mnt/temp/syslinux.cfg
 sudo umount /dev/sdb1
 sudo syslinux /dev/sdb1
 sync