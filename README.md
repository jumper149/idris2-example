# idris2-example

## Development

Enter development environment.

```
nix develop
```

Compile `idris2-lsp` manually.

```
cd idris2-lsp
idris2 --build
cd ..
```

Set up environment variables for the language server.

```
export PATH=idris2-lsp/build/exec:$PATH
export IDRIS2_PACKAGE_PATH=$(dirname $(dirname $(which idris2)))/idris2-0.7.0
```
