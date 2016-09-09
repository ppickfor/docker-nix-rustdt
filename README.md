# docker-nix-rustdt
build docker image for eclipse rustdt with nix

add config.nix to ~/.nixpkgs/config.nix

ensure

2d20dee buildImage: fix add / to end of source cp to resolve any softlinks
26091ec rustracer: 1.2.10 -> 1.2.10-master-160831
6ba139d eclipse-cpp-46: init at 4.6.0
6495aa8 eclipse-plugin-rustdt: init at 0.6.2
b82071c rainicorn: init at 1.0.0

are in your nix pakages
https://github.com/ppickfor/nixpkgs-channels

nix-build rustdt.nix -A rustDtDocker
docker load -i result
docker images |grep rustdt

ppickfor/nix-rustdt   latest              c7e49d7aa21b        46 years ago        1.564 GB

./rustdt

enjoy
