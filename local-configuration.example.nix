{ config, pkgs, callPackage, ... }:

{
  networking.hostName = "something";

  users.users.firesquid = {
    isNormalUser = true;
    password = "simplepassword";
    extraGroups = [ "wheel" "networkmanager" "docker"];
  };

  security.sudo.extraRules= [
    {  users = [ "firesquid" ];
      commands = [
         { command = "ALL" ;
           options= [ "NOPASSWD" ];
        }
      ];
    }
  ];

}
