#!/usr/bin/bash
clear
echo "Welcome to Fluffy Dollop!"
echo "What Drive/Image would you like to copy from? (ex. '/dev/sda' or '/media/user/drive/if.img')"
read IF
echo "What Drive/Image would you like to copy to? (ex. '/dev/sdb' or '/media/user/drive/of.img')"
read OF
clear
echo "Dollop is ready for liftoff. Are you sure this is what you want?"
echo "Input is $IF"
echo "Output is $OF"
case $input in
      [yY][eE][sS]|[yY])
            ;;
      [nN][oO]|[nN])
            exit 0
	    ./fluffy-dollop
            ;;
      *)
            echo "Invalid input..."
            exit 1
            ;;
esac
echo "Please enter root password below"
su - root -c "dd if=$IF of=$OF status=progress"
echo "dd exited. Make sure it completed successfully."
sleep 60s
exit 0
