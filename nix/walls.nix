{
  lib,
  stdenvNoCC,
}:
stdenvNoCC.mkDerivation (finalAttrs: {
  pname = "my-walls";
  version = "latest";
  src = ../.;
  installPhase = ''
    mkdir -p $out/share/wallpapers
    install -Dm444 active/* $out/share/wallpapers
  '';
  meta = with lib; {
    description = "Collection of wallpapers";
    homepage = "https://github.com/71zenith/assets";
    platforms = platforms.unix;
    maintainers = with maintainers; [_71zenith];
  };
})
