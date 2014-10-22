Vagrant.configure("2") do |config|
	config.vm.box = "ubuntu14.04x64"
	config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/trusty/trusty-server-cloudimg-amd64-juju-vagrant-disk1.box"
	config.vm.synced_folder "./app","/opt/lampp/htdocs/", create:true
	config.vm.network :private_network, ip: "192.168.55.55"
	config.vm.provision :shell, :path => "setup.sh"
end
