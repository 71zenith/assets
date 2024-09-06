{
  lib,
  stdenvNoCC,
}:
stdenvNoCC.mkDerivation (finalAttrs: {
  pname = "my-misc";
  version = "latest";
  src = ./.;
  installPhase = ''
    mkdir -p $out/share/passive
    mkdir -p $out/share/misc
    install -Dm444 passive/* $out/share/passive
    install -Dm444 misc/* $out/share/misc
  '';
  meta = with lib; {
    description = "Collection of miscellaneous";
    homepage = "https://github.com/71zenith/assets";
    platforms = platforms.unix;
    maintainers = with maintainers; [_71zenith];
  };
})
