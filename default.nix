{pkgs ? import <nixpkgs> {}}:
pkgs.mkShell{
    nativeBuildInput = [
	pkgs.jdk11
	pkgs.nodejs
	pkgs.python3
  pkgs.maven	
    ];
    shellHook = ''
        export JAVA_HOME=${pkgs.jdk11}
        PATH="${pkgs.jdk11}/bin:$PATH"
        PATH="${pkgs.python3}/bin:$PATH"
        PATH="${pkgs.nodejs}/bin:$PATH"
        PATH="${pkgs.maven}/bin:$PATH"
    '';
}
