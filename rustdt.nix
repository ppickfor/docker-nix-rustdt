with import  <nixpkgs> {};
with dockerTools;
with pkgs;

let
  rustDtImage = buildImage {
    name = "ppickfor/nix-rustdt";
    contents = [
      rustc
      rustfmt
      rustracer
      cargo
      rainicorn
      eclipses.eclipse-rustdt
      xorg.fontadobe100dpi.out
      fontconfig.out
      fontconfig.bin
      findutils
      coreutils
      bash
      less
      moreutils
      gnugrep
    ];
     /*
     runAsRoot = ''
        #!${stdenv.shell}
        mkdir /tmp
        chmod a=rwx,o+t /tmp
      '';
      */
  };
in {
  rustDtDocker = rustDtImage;
}
