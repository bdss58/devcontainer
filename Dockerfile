from centos:latest

run echo -e "LANG=en_US.utf-8\nLC_ALL=en_US.utf-8"

# install epel
run yum install -y subscription-manager \
	&& yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
	# && subscription-manager repos --enable "codeready-builder-for-rhel-8-x86_64-rpms"
	# && dnf config-manager --set-enabled powertools 

# install nmap
run yum install -y --allowerasing nmap coreutils binutils python3 python3-devel go git 

