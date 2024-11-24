{ pkgs ? import <nixpkgs> {}}:

pkgs.mkShell {
  buildInputs = [
    pkgs.nodejs_22
    pkgs.bun
  ];

  shellHook = ''
    echo "building donut editor..."
    npm run watch
    echo "done building!"
    echo "you can now run: sh ./scripts/code.sh to launch the dev version"
  '';
}
