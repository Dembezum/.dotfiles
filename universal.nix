{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
      testdisk # useful for repairing boot problems
      ms-sys # for writing Microsoft boot sectors / MBRs
      efibootmgr
      efivar
      parted
      gptfdisk
      ddrescue
      ccrypt
      cryptsetup # needed for dm-crypt volumes

# Some networking tools.
      fuse
      fuse3
      sshfs-fuse
      socat
      screen
      tcpdump

# Hardware-related tools.
      sdparm
      hdparm
      smartmontools # for diagnosing hard disks
      pciutils
      usbutils
      nvme-cli

# Some compression/archiver tools.
      unzip
      zip

# Some useful tools.
      kitty 
      xclip 
      ncdu
      tmux 
      htop 
      btop 
      tree 
      git 
      eza 

# Editors.
      vim

      ];

}

