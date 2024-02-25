{ config, pkgs, ... }:

{
# Existing Home Manager configuration...
  home.packages = with pkgs; [
    nodejs_21
      neovim
      kitty 
      xclip 
      tmux 
      htop 
      btop 
      tree 
      git 
      eza 
  ];

  environment.systemPackages with pkgs = [
    w3m-nographics # needed for the manual anyway
      testdisk # useful for repairing boot problems
      ms-sys # for writing Microsoft boot sectors / MBRs
      efibootmgr
      efivar
      parted
      gptfdisk
      ddrescue
      ncdu
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
      ];
  ];

}

