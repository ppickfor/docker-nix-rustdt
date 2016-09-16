with import  <nixpkgs> {};
with dockerTools;
with pkgs;

let
  rustDtImage = buildImage {
    name = "ppickfor/nix-rustdt";
      contents = symlinkJoin {
        name = "ppickfor-nix-rustdt-contents";
        paths = [
          rustc
          rustfmt
          rustracer
          cargo
          rainicorn
          eclipses.eclipse-rustdt
          xorg.fontadobe100dpi.out
          fontconfig.out
          fontconfig.bin
          #diagnositics TODO:remove when done
          findutils
          coreutils
          bash
          less
          moreutils
          gnugrep
        ];
      };
      runAsRoot = ''
         #!${stdenv.shell}
         mkdir /tmp
         chmod a=rwx,o+t /tmp
       '';
  };
in {
  rustDtDocker = rustDtImage;
}
