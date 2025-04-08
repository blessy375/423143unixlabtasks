# 1. Check if your Linux system is DEB or RPM-based
if [ -f /etc/debian_version ]; then
    echo "This is a DEB-based system (e.g., Ubuntu/Debian)"
elif [ -f /etc/redhat-release ]; then
    echo "This is an RPM-based system (e.g., RHEL/Fedora/CentOS)"
else
    echo "Unknown distribution"
fi

# 2. Install a .deb package (Ubuntu/Debian)
sudo dpkg -i package_name.deb
sudo apt-get install -f   # Fix any dependency issues

# 3. Install a .rpm package on RPM-based systems (RHEL/Fedora/CentOS)
sudo rpm -ivh package_name.rpm

# 4. Install an RPM package on Ubuntu using alien (converts .rpm to .deb)
sudo apt install alien
sudo alien -d package_name.rpm
sudo dpkg -i package_name.deb

# 5. Install software using apt or yum
# For DEB-based:
sudo apt update
sudo apt install package_name

# For RPM-based:
sudo yum install package_name
