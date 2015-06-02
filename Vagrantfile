# -*- mode: ruby -*-

CD_PATH = '~/Documents/Volumes/BSDCG/BSDCG_Spring_Summer_2015_DVD.iso'

Vagrant.configure("2") do |config|

  #config.vm.box = "opscode_freebsd-10.1_chef-provisionerless"
  

  config.vm.define :bsd_vm do |bsd_vm|
    
    ## Box name
    bsd_vm.vm.box = "opscode_freebsd-10.1"

    ## Domain Specific Options
    bsd_vm.vm.provider :libvirt do |domain|
      domain.memory = 8192
      domain.cpus = 4
      #This is what enables the nested vms
      domain.nested = true
    end

#    bsd_vm.vm.network :public_network,
#                      :dev => 'wlp3s6',
#                      :ip => '192.168.0.66',
#                     :mode => "bridge",
#                      :type => "bridge"


  end #config.vm.define :bsd_vm do |bsd_vm|
  
  config.vm.synced_folder "data/", "/vagrant_data"
  
  # Options for libvirt vagrant provider.
  config.vm.provider :libvirt do |libvirt|

    #The best chance of having high performing nested virtual machines is with kvm:
    libvirt.driver = "kvm"

    # The name of the server, where libvirtd is running.
    #libvirt.host = "localhost"

    # If use ssh tunnel to connect to Libvirt.
    #libvirt.connect_via_ssh = true
    
    # The username and password to access Libvirt.
    #libvirt.username = "kwaku"
    #libvirt.password = "secret"
    
    # Set a prefix for the machines that's different than the project dir name.
    #libvirt.default_prefix = ''
    libvirt.storage :file,
                  :device => :cdrom,
                  :path =>  CD_PATH

    
  end #libvirt

end #Vagrant.configure(2) do |config|
