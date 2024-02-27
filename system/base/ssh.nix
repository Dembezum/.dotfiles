#{ username, ... }:
#{
#  # Enable SSH on the machine, and open the necessary ports
#  networking.firewall = {
#    allowedTCPPorts = [
#      22
#    ];
#  };
#  services.openssh = {
#    enable = true;
#    settings = {
#      PasswordAuthentication = true;
#      KbdInteractiveAuthentication = true;
#      PermitRootLogin = "no";
#      PermitEmptyPasswords = false;
#      Protocol = 2;
#      MaxAuthTries = 5;
#      ChallengeResponseAuthentication = false;
#      AllowTcpForwarding = "yes";
#      UsePAM = "no";
#    };
#  };
#  users.users.nixtop.openssh.authorizedKeys.keys = [
#    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPkzDBekgDbmHxLJkWtCd+ytxocmG3DeBlDgJgYIkgeV"
#  ];
#}
