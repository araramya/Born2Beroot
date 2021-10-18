# Born2Beroot
This project aims to introduce you to the wonderful world of virtualization.
You will create your first machine in VirtualBox (or UTM if you can’t use VirtualBox)
under specific instructions. Then, at the end of this project, you will be able to set up
your own operating system while implementing strict rules.


Here is some commands that you can use in this project.

1) INSTALLATION (not graphical installation)
1.1. Hostname - yourintralogin42 example: araramya42
     Domainname - leave empty
     Root pass - somepass
     username - someusername
     user_pass - some_pass

1.2. Partition setup
     Call or write me, I will help, I don't have HAVES to write it.
     
2) CONFIGURATION
2.1. SUDO
su - enter root
apt install sudo 
adduser <username> sudo
sudo reboot
sudo addgroup <new_group> - creating new group
sudo adduser <user_name> <group_name> - add user to group
dpkg -l | grep sudo - Verify sudo is installed or not
getent group <group_name> - it will show you users of the group.

2.2. SSH
sudo apt install openssh-server
vim /etc/ssh/ssh-config - change "#port 22" to "port 4242" and "PermitRootlogin no"
systemctl status ssh - checking the status of ssh

2.3. UFW
sudo apt install ufw
dpkg -l | grep ufw - checking the status of ufw
sudo ufw enable
sudo ufw allow 4242
systemctl restart ufw
systemctl ufw status

     
2.4. PASSWORDS
     sudo vim /etc/login.defs
     PassMaxDays 30
     PassMinDays 2
     PassWarning 7
     sudo apt install libpam -pwquality
     and in common password configs you need to add this rules
     minlen - minimum length of the password
     ucredit - uppercase count
     dcredit - digits count
     maxrepeat - maximum numbers of identifical characters
     reject_username - you can't use your username as a password
     difok - difference from old password
     enforce_for_root - enforce writen rules for root password
    
2.5. NEW_GROUPS AND USERS
     sudo adduser <username>
     sudo addgroup <group_name>
     gpasswd -d <username> <group_name> - remove user from group
     sudo chage -l <username> - get information about password policy of user
     
2.6. SUDO_CONFIGURATIONS
     Go through link below there is a lot of information about this.
     https://www.tecmint.com/sudoers-configurations-for-setting-sudo-in-linux/
     
     
2.7. sudo crontab - u root -e to open crontab.
     
     
     
if you have questions you can write me. arsen.aramyan2001@gmail.com
