{ stdenv ,fetchFromGitHub }:
{
  sddm-theme = stdenv.mkDerivation  {
    pname = "sddm-theme";
    version = "1.0.0";
    src = fetchFromGitHub {
      owner = "Vahrajka";
      repo = "sddm-theme";
      rev = "feb3bf5ffa5513b3ca74b606c36f2ec8f47ab1a1";
      sha256 = "sha256-743FosVxehIIJHayY7QSqxWk2fU0BqUr2JWITdPvSr8=";
      };
    dontBuild = true;
    installPhase = ''
      mkdir -p $out/share/sddm/themes
      cp -r $src $out/share/sddm/themes/sddm-theme
    '';
  };
}
