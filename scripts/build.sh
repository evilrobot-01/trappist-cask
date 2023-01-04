#!/bin/bash

echo Building Polkadot...
cd polkadot || exit
cargo build --release
cd ..

echo Building Statemine...
cd cumulus || exit
cargo build --release
cd ..

echo Building Trappist...
cd trappist || exit
./scripts/build_runtimes.sh
cd ..

# Copy binaries to trappist bin directory, for usage with existing network configurations
mkdir -p -- trappist/bin
cp ./polkadot/target/release/polkadot ./trappist/bin
cp ./cumulus/target/release/polkadot-parachain ./trappist/bin
