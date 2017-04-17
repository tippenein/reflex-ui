{ mkDerivation, aeson, base, containers, lens, reflex, reflex-dom
, stdenv, text
}:
mkDerivation {
  pname = "reflex-ui";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson base containers lens reflex reflex-dom text
  ];
  executableHaskellDepends = [
    aeson base lens reflex reflex-dom text
  ];
  description = "A UI framework for Reflex built on top of the Bulma CSS framework";
  license = stdenv.lib.licenses.bsd3;
}
