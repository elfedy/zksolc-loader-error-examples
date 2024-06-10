Examples to demonstrate zksolc failing when solc includes files loaded by Host Filesystem Loader in the output.

## Compiler versions used
* solc:  `0.8.24+commit.e11b9ed9.Linux.g++`
* zksolc: `EraVM Solidity compiler v1.4.1 (LLVM build b5ccf6d5774e9bc3cee47ab4a334404718d3adfd)`

## example1
Compiling source files directly:
* `solc --bin Main.sol` works and compiles both binaries.
* `zksolc --bin Main.sol` fails with `Source code for path 'MinMath.sol' not found`.

## example2
Specifying standard json (Only adding `Main.sol` but not its dependencies)
* `solc --standard-json solc_input.json` works and compiles both binaries.
* `cat zksolc_input | zksolc --standard-json` fails with `Source code for path 'MinMath.sol' not found`.
