sudo apt update
sudo DEBIAN_FRONTEND=noninteractive \
	apt install --assume-yes xfce4 desktop-base dbus-x11 xscreensaver
sudo apt install ubuntu-desktop screen
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
sudo apt install ./chrome-remote-desktop_current_amd64.deb
echo "sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" > /etc/chrome-remote-desktop-session'" >> ~/.bashrc
echo "sudo gpasswd -d codespace chrome-remote-desktop > /dev/null 2> /dev/null" >> ~/.bashrc
