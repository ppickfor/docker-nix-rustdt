{
  allowUnfree = true;
  packageOverrides = pkgs: rec {
    eclipses.eclipse-rustdt = with pkgs.eclipses; with plugins; eclipseWithPlugins {
      eclipse = eclipse-cpp-46;
      jvmArgs = [ "-Xmx2048m" ];
      plugins = [ rustdt ];
    };
  };
}
