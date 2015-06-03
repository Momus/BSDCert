# -*- mode: ruby -*-



CD_PATH = '~/Documents/Volumes/BSDCG/BSDCG_Spring_Summer_2015_DVD.iso'

Vagrant.configure("2") do |config|
  

  config.vm.define :bsd_vm do |bsd_vm|
    
    bsd_vm.vm.box = "opscode_freebsd-10.1"

    bsd_vm.vm.network :private_network,
                      :ip => '10.0.0.67'

    bsd_vm.vm.synced_folder ".", "/vagrant", disabled: true
    
    ## Domain Specific Options
    bsd_vm.vm.provider :libvirt do |domain|
      domain.memory = 8192
      domain.cpus = 4
      #This is what enables the nested VMs
      domain.nested = true

      domain.storage :file,
                     :device => :cdrom,
                     :path =>  CD_PATH
      
      domain.driver = "kvm"
      
      #This does not work:
      #domain.audio = "none"
      
    end #Domain options
    
  end #config.vm.define :bsd_vm do |bsd_vm|

  
end #Vagrant.configure(2) do |config|
